/*
 *  Gallery Remote - a File Upload Utility for Gallery
 *
 *  Gallery - a web based photo album viewer and editor
 *  Copyright (C) 2000-2001 Bharat Mediratta
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or (at
 *  your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful, but
 *  WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
package com.gallery.GalleryRemote.model;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.*;
import java.io.Serializable;

import javax.swing.ComboBoxModel;
import javax.swing.event.ListDataEvent;
import javax.swing.event.ListDataListener;

import com.gallery.GalleryRemote.*;
import com.gallery.GalleryRemote.prefs.PropertiesFile;
import com.gallery.GalleryRemote.prefs.PreferenceNames;

/**
 *  Gallery model
 *
 *@author     paour
 *@created    17 ao�t 2002
 */

public class Gallery implements ComboBoxModel, Serializable, PreferenceNames {
	public static final String MODULE="Gallery";

	String stUrlString = null;
	String pnLoginUrlString = null;
	String pnGalleryUrlString = null;
	String username;
	String password;
	ArrayList albumList = null;
	Album selectedAlbum = null;
	int type = TYPE_STANDALONE;

	transient GalleryComm comm = null;

	// ListModel
	transient Vector listeners = null;

	transient StatusUpdate su;
	transient private int prefsIndex;

	public static String types[] = new String[] {STANDALONE, POSTNUKE};
	public static final int TYPE_STANDALONE = 0;
	public static final int TYPE_POSTNUKE = 1;

	public Gallery(StatusUpdate su) {
		this.su = su;

		if (su instanceof MainFrame) {
			prefsIndex = ((MainFrame) su).galleries.getSize();
		}
	}

	/*
	 * **** Gallery online management ****
	 */

	public void uploadFiles( StatusUpdate su ) {
		getComm( su ).uploadFiles( su, true );
	}
	
	public void fetchAlbums( StatusUpdate su ) {
		//albumList = null;

		getComm( su ).fetchAlbums( su, true );
	}
	
	public void newAlbum( Album a, StatusUpdate su) {
		Log.log(Log.INFO, MODULE, "Creating new album " + a.toString());

		// create album synchronously
		getComm( su ).newAlbum( su, a.getParentAlbum(), a.getName(),
				a.getTitle(), a.getCaption(), false );
		
		// refresh album list asynchronously
		fetchAlbums( su );
	}

	public void logOut() {
		albumList = null;
		selectedAlbum = null;
		if (comm != null) {
			comm.logOut();
		}
		comm = null;

		notifyListeners();
	}

	/*
	 * **** Gallery contents handling ****
	 */

	public void setAlbumList( ArrayList albumList ) {
		if ( albumList == null ) {
			throw new IllegalArgumentException( "Must supply non-null album list." );
		}
		
		ArrayList oldList = this.albumList;
		this.albumList = albumList;
		if ( albumList.size() > 0 ) {
			selectedAlbum = (Album) this.albumList.get(0);
		}
		if (oldList != null) {
			for (Iterator i = oldList.iterator(); i.hasNext(); ) {
				Album a = (Album) i.next();
				
				Log.log(Log.TRACE, MODULE, a.toString());
				if (! a.getPicturesVector().isEmpty()) {
					Log.log(Log.TRACE, MODULE, "Album " + a + " had pictures");
					int j = albumList.indexOf(a);
					
					if (j != -1) {
						Album newAlbum = (Album) albumList.get(j);
						newAlbum.setPicturesVector(a.getPicturesVector());
					}
				}
			}
		}
		
		notifyListeners();
	}
	
	/**
	 * Adds an album to the gallery and selects the first one added.
	 */
	public synchronized void addAlbum( Album a ) {
		if ( a == null ) {
			throw new IllegalArgumentException( "Must supply non-null album." );
		}
		
		// when the first album becomes available, make sure to select
		// it in the list
		boolean firstAlbum = false;
		
		// lazy allocation
		if ( this.albumList == null ) {
			this.albumList = new ArrayList();
			firstAlbum = true;
		}
		
		albumList.add( a );
		
		if ( firstAlbum ) {
			selectedAlbum = (Album) this.albumList.get(0);
		}
		
		notifyListeners();
	}

	public ArrayList getAlbumList() {
		return albumList;
	}

	public void clearAlbumList() {
		albumList.clear();
		notifyListeners();
	}

	public ArrayList getAllPictures() {
		ArrayList pictures = new ArrayList();

		if (albumList != null) {
			Iterator i = albumList.iterator();
			while (i.hasNext()) {
				Album a = (Album) i.next();

				pictures.addAll(a.getPicturesVector());
			}
		}

		return pictures;
	}

	public ArrayList getAllPictureFiles() {
		ArrayList files = new ArrayList();

		if (albumList != null) {
			Iterator i = albumList.iterator();
			while (i.hasNext()) {
				Album a = (Album) i.next();

				files.addAll(a.getFileList());
			}
		}

		return files;
	}


	/*
	 * **** Gallery URL management ****
	 */

	public static String reformatUrlString(String urlString, boolean trailingSlash) throws MalformedURLException {
		if ( urlString == null ) {
			throw new IllegalArgumentException( "urlString must not be null" );
		}

		if (trailingSlash && !urlString.endsWith("/")) {
			urlString += "/";
		}

		if (!urlString.startsWith("http://") && !urlString.startsWith("https://")) {
			urlString = "http://" + urlString;
		}

		return urlString;
	}

	/* Standalone URL */

	public void setStUrlString( String urlString ) throws MalformedURLException {
		if (urlString == null)
		{
			stUrlString = null;
			return;
		}

		stUrlString = reformatUrlString( urlString, true );

		if (stUrlString != null) {
			GalleryRemote.getInstance().properties.setProperty(URL + prefsIndex, stUrlString);
		}
	}

	public String getStUrlString() {
		if (stUrlString != null) {
			return stUrlString;
		} else {
			return "http://your.host.com/gallery";
		}
	}

	/* PostNuke Gallery URL */

	public void setPnGalleryUrlString( String urlString ) throws MalformedURLException {
		if (urlString == null)
		{
			pnGalleryUrlString = null;
			return;
		}

		pnGalleryUrlString = reformatUrlString( urlString, false );

		if (pnGalleryUrlString != null) {
			GalleryRemote.getInstance().properties.setProperty(PN_GALLERY_URL + prefsIndex, pnGalleryUrlString);
		}
	}

	public String getPnGalleryUrlString() {
		if (pnGalleryUrlString != null) {
			return pnGalleryUrlString.toString();
		} else {
			return "http://your.host.com/modules.php?op=modload&name=gallery&file=index&include=$GALLERYFILE$";
		}
	}

	/* PostNuke Login URL */

	public void setPnLoginUrlString( String urlString ) throws MalformedURLException {
		if (urlString == null)
		{
			pnLoginUrlString = null;
			return;
		}

		pnLoginUrlString = reformatUrlString( urlString, false );

		if (pnLoginUrlString != null) {
			GalleryRemote.getInstance().properties.setProperty(PN_LOGIN_URL + prefsIndex, pnLoginUrlString);
		}
	}

	public String getPnLoginUrlString() {
		if (pnLoginUrlString != null) {
			return pnLoginUrlString.toString();
		} else {
			return "http://your.host.com/user.php?uname=$USERNAME$&pass=$PASSWORD$&module=NS-User&op=login";
		}
	}

	/* Generic */

	public URL getLoginUrl(String galleryFile) {
		try {
			switch (type) {
				case TYPE_STANDALONE:
					return new URL(stUrlString + galleryFile);

				case TYPE_POSTNUKE:
					return new URL(replace(pnLoginUrlString, galleryFile));

				default:
					throw new RuntimeException("Unknown type: " + type);
			}
		} catch (MalformedURLException e) {
			Log.log(Log.ERROR, MODULE, "Malformed URL. This should never ever happen." +
					"Things will probably go wrong...");
			Log.logException(Log.ERROR, MODULE, e);
			return null;
		}
	}

	public URL getGalleryUrl(String galleryFile) {
		try {
			switch (type) {
				case TYPE_STANDALONE:
					return new URL(stUrlString + galleryFile);

				case TYPE_POSTNUKE:
					return new URL(replace(pnGalleryUrlString, galleryFile));

				default:
					throw new RuntimeException("Unknown type: " + type);
			}
		} catch (MalformedURLException e) {
			Log.log(Log.ERROR, MODULE, "Malformed URL. This should never ever happen." +
					"Things will probably go wrong...");
			Log.logException(Log.ERROR, MODULE, e);
			return null;
		}
	}

	String replace(String urlString, String galleryFile) {
		StringBuffer sb = new StringBuffer(urlString);

		replace(sb, "$USERNAME$", username);
		replace(sb, "$PASSWORD$", password);
		replace(sb, "$GALLERYFILE$", galleryFile);

		return sb.toString();
	}

	boolean replace(StringBuffer sb, String token, String value) {
		int n = sb.indexOf(token);

		if (n != -1) {
			sb.replace(n, n + token.length(), value);
			return true;
		}

		return false;
	}


	/*
	 * **** Gallery properties management ****
	 */

	public void setUsername( String username ) {
		if ( username != null && username.length() > 0
			&& ! username.equals( this.username ) ) {

			this.username = username;

			logOut();

			GalleryRemote.getInstance().properties.setProperty(USERNAME + prefsIndex, username);
		}
	}

	public void setPassword( String password ) {
		//Log.log(Log.TRACE, MODULE, "setpassword: " + password);
		if ( password != null && password.length() > 0
			&& ! password.equals( this.password ) ) {

			this.password = password;

			logOut();

			if (GalleryRemote.getInstance().properties.getBooleanProperty(SAVE_PASSWORDS)) {
				GalleryRemote.getInstance().properties.setBase64Property(PASSWORD + prefsIndex, password);
			} else {
				GalleryRemote.getInstance().properties.remove(PASSWORD + prefsIndex);
			}
		}
	}

	public void setType(int type) {
		this.type = type;

		GalleryRemote.getInstance().properties.setProperty(TYPE + prefsIndex, types[type]);
	}

	public String getUsername() {
		return username;
	}


	public String getPassword() {
		return password;
	}


	public int getType() {
		return type;
	}


	public static Gallery readFromProperties(PropertiesFile p, int prefsIndex, StatusUpdate su) throws MalformedURLException {
		String url = p.getProperty( URL + prefsIndex );
		String username = p.getProperty( USERNAME + prefsIndex );

		if (username == null) {
			return null;
		}

		String password = null;
		try {
			password = p.getBase64Property( PASSWORD + prefsIndex );
		} catch (NumberFormatException e) {}

		Log.log(Log.INFO, MODULE, "Loaded saved URL " + prefsIndex + ": " + url + " (" + username + "/******)" );

		Gallery g = new Gallery(su);
		g.username = username;
		g.password = password;
		g.setStUrlString(url);
		g.setPnLoginUrlString(p.getProperty(PN_LOGIN_URL + prefsIndex));
		g.setPnGalleryUrlString(p.getProperty(PN_GALLERY_URL + prefsIndex));
		g.setPrefsIndex(prefsIndex);

		String typeS = p.getProperty( TYPE + prefsIndex );
		if (typeS != null) {
			g.setType(Arrays.asList(types).indexOf(typeS));
		}

		return g;
	}

	public void writeToProperties(PropertiesFile p) {
		Log.log(Log.TRACE, MODULE, "Wrote to properties: " + toString() );

		p.setProperty(URL + prefsIndex, stUrlString);
		p.setProperty(USERNAME + prefsIndex, username);
		if (getPassword() != null && p.getBooleanProperty(SAVE_PASSWORDS)) {
			p.setBase64Property(PASSWORD + prefsIndex, password);
		} else {
			p.remove(PASSWORD + prefsIndex);
		}
		p.setProperty(TYPE + prefsIndex, types[type]);

		if (pnLoginUrlString != null) {
			p.setProperty(PN_LOGIN_URL + prefsIndex, pnLoginUrlString);
		}
		if (pnGalleryUrlString != null) {
			p.setProperty(PN_GALLERY_URL + prefsIndex, pnGalleryUrlString);
		}
	}

	public static void removeFromProperties(PropertiesFile p, int n) {
		Log.log(Log.TRACE, MODULE, "Removed from properties: " + n );

		p.remove(URL + n);
		p.remove(USERNAME + n);
		p.remove(PASSWORD + n);
		p.remove(TYPE + n);
		p.remove(PN_LOGIN_URL + n);
		p.remove(PN_GALLERY_URL + n);
	}

	public void setPrefsIndex(int prefsIndex) {
		this.prefsIndex = prefsIndex;
	}

	public String toString() {
		String tmp = null;

		switch (type) {
			case TYPE_STANDALONE:
				tmp = stUrlString;
				break;

			case TYPE_POSTNUKE:
				tmp = pnGalleryUrlString;
				break;

			default:
				throw new RuntimeException("Unknown type: " + type);
		}

		if (tmp == null) {
			tmp = "http://";
		}
		
		return tmp;
	}

	public Album getSelectedAlbum() {
		return selectedAlbum;
	}
	

	/*
	 *	ListModel Implementation
	 */
	public int getSize() {
		if (albumList != null) {
			return albumList.size();
		} else {
			return 0;
		}
	}


	public Object getElementAt( int index ) {
		return albumList.get( index );
	}

	public void setSelectedItem(Object anItem) {
		selectedAlbum = (Album) anItem;
	}
	
	public Object getSelectedItem() {
		return selectedAlbum;
	}
	
	public void addListDataListener( ListDataListener ldl ) {
		if (listeners == null) listeners = new Vector(1);

		listeners.addElement( ldl );
	}


	public void removeListDataListener( ListDataListener ldl ) {
		if (listeners != null) {
			listeners.removeElement( ldl );
		}
	}

	/*
	 * Miscelaneous
	 */

	/**
	 *	Lazy instantiation for the GalleryComm instance.
	 */
	public GalleryComm getComm(StatusUpdate su) {
		if ( comm == null && stUrlString != null ) {
			comm = GalleryComm.getCommInstance(su, getGalleryUrl(""), this);
			
			if (comm == null) {
				Log.log(Log.ERROR, MODULE, "No protocol implementation found");
				su.error("Gallery Remote can find no protocol implementation at the URL "
					+ stUrlString.toString() + "\nCheck with a web browser that "
					+ stUrlString.toString() + "gallery_remote.php is a valid URL");
			}
		}
		
		return comm;
	}
	
	public boolean hasComm() {
		return comm != null;
	}

	void notifyListeners() {
		ListDataEvent lde;
		if (albumList != null) {
			lde = new ListDataEvent( com.gallery.GalleryRemote.GalleryRemote.getInstance().mainFrame, ListDataEvent.CONTENTS_CHANGED, 0, albumList.size() );
		} else {
			lde = new ListDataEvent( com.gallery.GalleryRemote.GalleryRemote.getInstance().mainFrame, ListDataEvent.CONTENTS_CHANGED, 0, 0 );
		}
		
		notifyListeners(lde);
	}
	
	void notifyListeners(ListDataEvent lde) {
		if (listeners != null) {
			Log.log(Log.TRACE, MODULE, "Firing ListDataEvent=" + lde.toString());
			Enumeration e = listeners.elements();
			while ( e.hasMoreElements() ) {
				ListDataListener ldl = (ListDataListener) e.nextElement();
				ldl.contentsChanged( lde );
			}
		}
	}
}