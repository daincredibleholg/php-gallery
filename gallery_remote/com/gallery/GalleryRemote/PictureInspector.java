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
package com.gallery.GalleryRemote;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.border.*;
import javax.swing.event.*;
import com.gallery.GalleryRemote.model.*;

/**
 *  Bean inspector for Pictures
 *
 *@author     paour
 *@created    August 16, 2002
 */
public class PictureInspector extends JPanel
	implements ActionListener
{
	public static final String MODULE = "PictInspec";
	
	GridBagLayout gridBagLayout4 = new GridBagLayout();
	JLabel icon = new JLabel();
	JLabel jLabel5 = new JLabel();
	JLabel path = new JLabel();
	JLabel jLabel6 = new JLabel();
	JLabel album = new JLabel();
	JLabel Caption = new JLabel();
	JLabel jLabel4 = new JLabel();
	JButton up = new JButton();
	JLabel jLabel8 = new JLabel();
	JButton down = new JButton();
	JPanel spacer = new JPanel();
	JLabel jLabel1 = new JLabel();
	JLabel size = new JLabel();
	JTextField caption = new JTextField();

	MainFrame mf = null;
	Object[] pictures = null;
	JButton delete = new JButton();
	JLabel jLabel2 = new JLabel();


	/**
	 *  Constructor for the PictureInspector object
	 */
	public PictureInspector() {
		try {
			jbInit();
			jbInitEvents();
		} catch ( Exception e ) {
			e.printStackTrace();
		}
	}


	private void jbInit()
		throws Exception {
		setLayout( gridBagLayout4 );
		icon.setHorizontalAlignment( SwingConstants.CENTER );
		icon.setHorizontalTextPosition( SwingConstants.CENTER );
		icon.setText( "icon" );
		icon.setVerticalTextPosition( SwingConstants.BOTTOM );
		jLabel5.setText( "Path:" );
		path.setText( "path" );
		jLabel6.setText( "Album:" );
		album.setText( "album" );
		jLabel4.setText( "Caption:" );
		up.setMaximumSize(new Dimension( 100, 23 ) );
		up.setMinimumSize( new Dimension( 100, 23 ) );
		up.setPreferredSize( new Dimension( 100, 23 ) );
		up.setText( "Move up" );
		up.setActionCommand( "Up" );
		jLabel8.setText( "Move:" );
		down.setMaximumSize(new Dimension( 100, 23 ) );
		down.setMinimumSize( new Dimension( 100, 23 ) );
		down.setPreferredSize( new Dimension( 100, 23 ) );
		down.setText( "Move down" );
		down.setActionCommand( "Down" );
		jLabel1.setText( "Size:" );
		size.setText( "size" );
		caption.setBackground(SystemColor.control);
		caption.setFont( new java.awt.Font( "SansSerif", 0, 11 ) );
		caption.setBorder( null );
		caption.setEditable( false );
		caption.setText( "caption" );
		delete.setMaximumSize(new Dimension( 100, 23 ) );
		delete.setMinimumSize(new Dimension( 100, 23 ) );
		delete.setPreferredSize(new Dimension( 100, 23 ) );
		delete.setActionCommand("Delete");
		delete.setText("Delete");
		jLabel2.setText("Delete:");
		add( icon,  new GridBagConstraints(0, 0, 2, 1, 1.0, 0.0
            ,GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(0, 0, 0, 0), 0, 0) );
		add( jLabel5,  new GridBagConstraints(0, 1, 1, 1, 0.0, 0.0
            ,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 0, 0, 0), 2, 0) );
		add( path,  new GridBagConstraints(1, 1, 1, 1, 1.0, 0.0
            ,GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(0, 0, 0, 0), 0, 0) );
		add( jLabel6,  new GridBagConstraints(0, 2, 1, 1, 0.0, 0.0
            ,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 0, 0, 0), 2, 0) );
		add( album,  new GridBagConstraints(1, 2, 1, 1, 1.0, 0.0
            ,GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(0, 0, 0, 0), 0, 0) );
		add( Caption,  new GridBagConstraints(0, 5, 1, 1, 0.0, 0.0
            ,GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(0, 0, 0, 0), 0, 0) );
		add( jLabel4,  new GridBagConstraints(0, 4, 1, 1, 0.0, 0.0
            ,GridBagConstraints.SOUTHEAST, GridBagConstraints.NONE, new Insets(0, 0, 0, 0), 2, 0) );
		add( up,   new GridBagConstraints(1, 6, 1, 1, 0.0, 0.0
            ,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(2, 0, 0, 0), 0, 0) );
		add( jLabel8,  new GridBagConstraints(0, 6, 1, 2, 0.0, 0.0
            ,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 0, 0, 0), 2, 0) );
		add( down,  new GridBagConstraints(1, 7, 1, 1, 0.0, 0.0
            ,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(0, 0, 0, 0), 0, 0) );
		add( spacer,  new GridBagConstraints(0, 9, 2, 1, 1.0, 1.0
            ,GridBagConstraints.CENTER, GridBagConstraints.BOTH, new Insets(0, 0, 0, 0), 0, 0) );
		this.add( jLabel1,  new GridBagConstraints(0, 3, 1, 1, 0.0, 0.0
            ,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 0, 0, 0), 2, 0) );
		this.add( size,  new GridBagConstraints(1, 3, 1, 1, 1.0, 0.0
            ,GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(0, 0, 0, 0), 0, 0) );
		this.add( caption,  new GridBagConstraints(1, 4, 1, 1, 1.0, 0.0
            ,GridBagConstraints.CENTER, GridBagConstraints.HORIZONTAL, new Insets(0, 0, 0, 0), 0, 0) );
		this.add(delete,    new GridBagConstraints(1, 8, 1, 1, 0.0, 0.0
            ,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(2, 0, 0, 0), 0, 0));
		this.add(jLabel2,   new GridBagConstraints(0, 8, 1, 1, 0.0, 0.0
            ,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 0, 0, 0), 2, 0));
	}

	private void jbInitEvents() {
		delete.addActionListener( this );
		up.addActionListener( this );
		down.addActionListener( this );
	}
	
	// Event handling
	/**
	 *  Menu and button handling
	 *
	 *@param  e  Action event
	 */
	public void actionPerformed( ActionEvent e ) {
		String command = e.getActionCommand();
		Log.log(Log.INFO, MODULE, "Command selected " + command );
		
		if ( command.equals( "Delete" ) ) {
			mf.deleteSelectedPictures();
		} else if ( command.equals( "Up" ) ) {
			mf.movePictureUp();
		} else if ( command.equals( "Down" ) ) {
			mf.movePictureDown();
		}
	}

	/**
	 *  Sets the mainFrame attribute of the PictureInspector object
	 *
	 *@param  mf  The new mainFrame value
	 */
	public void setMainFrame( MainFrame mf ) {
		this.mf = mf;
		icon.setIcon( mf.defaultThumbnail );
	}


	/**
	 *  Sets the picture attribute of the PictureInspector object
	 *
	 *@param  p  The new picture value
	 */
	public void setPictures( Object[] pictures ) {
		this.pictures = pictures;

		if ( pictures == null || pictures.length == 0 ) {
			icon.setText("no picture selected");
			icon.setIcon( mf.defaultThumbnail );
			path.setText( "" );
			album.setText( "" );
			caption.setText( "" );
			size.setText( "" );
			
			up.setEnabled(false);
			down.setEnabled(false);
			delete.setEnabled(false);
		} else if ( pictures.length == 1) {
			Picture p = (Picture) pictures[0];
			
			icon.setText( p.getSource().getName() );
			icon.setIcon( mf.getThumbnail( p ) );
			path.setText( p.getSource().getParent() );
			album.setText( p.getAlbum().getName() );
			caption.setText( p.getCaption() );
			size.setText( String.valueOf( (int) p.getFileSize() ) + " bytes" );

			up.setEnabled(true);
			down.setEnabled(true);
			delete.setEnabled(true);
		} else {
			Picture p = (Picture) pictures[0];

			icon.setText( pictures.length + " elements selected" );
			icon.setIcon( mf.defaultThumbnail );
			path.setText( "" );
			album.setText( p.getAlbum().getName() );
			caption.setText( "" );
			size.setText( Album.getObjectFileSize(pictures) + " bytes" );

			up.setEnabled(false);
			down.setEnabled(false);
			delete.setEnabled(true);
		}
	}
	
	public void setPictures( Picture[] ps) {
	}
}

