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

import com.gallery.GalleryRemote.model.Picture;
import com.gallery.GalleryRemote.util.GRI18n;

import javax.swing.*;
import java.awt.*;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.awt.dnd.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/**
 * Drag and drop handler
 * 
 * @author paour
 * @created August 16, 2002
 */
public class DroppableList
		extends JList implements DropTargetListener, DragSourceListener, DragGestureListener {

	protected final static String MODULE = "Droplist";
	protected static GRI18n grRes = GRI18n.getInstance();
	MainFrame mf = null;

	DragSource dragSource;
	DropTarget dropTarget;
	int lastY = -1;
	int scrollPace = 0;

	public DroppableList() {
		dragSource = new DragSource();
		dragSource.createDefaultDragGestureRecognizer(this, DnDConstants.ACTION_MOVE, this);
		dropTarget = new DropTarget(this, this);
	}

	public void paint(Graphics g) {
		lastY = -1;
		super.paint(g);
	}

	public boolean isDragOK(DropTargetEvent dropTargetEvent) {
		if (!isEnabled()) {
			return false;
		}

		if (dropTargetEvent instanceof DropTargetDragEvent) {
			return ((DropTargetDragEvent) dropTargetEvent).isDataFlavorSupported(DataFlavor.javaFileListFlavor)
					|| ((DropTargetDragEvent) dropTargetEvent).isDataFlavorSupported(PictureSelection.flavors[0]);
		} else {
			return ((DropTargetDropEvent) dropTargetEvent).isDataFlavorSupported(DataFlavor.javaFileListFlavor)
					|| ((DropTargetDropEvent) dropTargetEvent).isDataFlavorSupported(PictureSelection.flavors[0]);
		}
	}

	/* ********* TargetListener ********** */
	public void dragEnter(DropTargetDragEvent dropTargetDragEvent) {
		Log.log(Log.LEVEL_TRACE, MODULE, "dragEnter - dtde");
		for (Iterator it = dropTargetDragEvent.getCurrentDataFlavorsAsList().iterator(); it.hasNext();) {
			DataFlavor flavor = (DataFlavor) it.next();
			Log.log(Log.LEVEL_TRACE, MODULE, "Flavor: " + flavor.getHumanPresentableName() + " -- " +
					flavor.getMimeType());
		}
		Log.log(Log.LEVEL_TRACE, MODULE, "Action: " + dropTargetDragEvent.getSourceActions() + " -- " +
				dropTargetDragEvent.getDropAction());

		if (!isDragOK(dropTargetDragEvent)) {
			Log.log(Log.LEVEL_TRACE, MODULE, "Refusing drag");
			dropTargetDragEvent.rejectDrag();
			return;
		}

		Log.log(Log.LEVEL_TRACE, MODULE, "Accepting drag");
		//dropTargetDragEvent.acceptDrag( DnDConstants.ACTION_COPY_OR_MOVE | DnDConstants.ACTION_REFERENCE );
	}

	public void dragExit(DropTargetEvent dropTargetEvent) {
		Log.log(Log.LEVEL_TRACE, MODULE, "dragExit - dtde");

		repaint();
	}

	public void dragOver(DropTargetDragEvent dropTargetDragEvent) {
		//Log.log(Log.TRACE, MODULE,"dragOver - dtde");
		if (!isDragOK(dropTargetDragEvent)) {
			dropTargetDragEvent.rejectDrag();
			return;
		}

		//dropTargetDragEvent.acceptDrag( DnDConstants.ACTION_COPY_OR_MOVE | DnDConstants.ACTION_REFERENCE );
		dragOver((int) dropTargetDragEvent.getLocation().getY());
	}

	public void dragOver(int y) {
		int i = locationToIndex(new Point(1, y));
		Rectangle r = getVisibleRect();
		boolean scrolled = false;

		if (y < r.getY() + safeGetFixedCellHeight() && i > 0) {
			int tmpLastY = lastY;
			ensureIndexIsVisible(i - 1);
			lastY = tmpLastY;
			scrolled = true;
		}
		if (y > r.getY() + r.getHeight() - safeGetFixedCellHeight() && i < getModel().getSize() - 1) {
			int tmpLastY = lastY;
			ensureIndexIsVisible(i + 1);
			lastY = tmpLastY;
			scrolled = true;
		}

		Graphics g = getGraphics();
		g.setXORMode(Color.cyan);
		int xStart = 10;
		int xStop = ((int) this.getVisibleRect().getWidth()) - xStart;
		if (lastY != -1) {
			int ySnap = snap(lastY);
			g.drawLine(xStart, ySnap, xStop, ySnap);
			g.drawLine(xStart, ySnap + 1, xStop, ySnap + 1);
		}

		lastY = y;

		int ySnap = snap(lastY);
		g.drawLine(xStart, ySnap, xStop, ySnap);
		g.drawLine(xStart, ySnap + 1, xStop, ySnap + 1);

		if (scrolled) {
			scrollPace++;

			try {
				Thread.sleep(scrollPace > 5 ? 10 : 200);
			} catch (InterruptedException e) {
			}
		} else {
			scrollPace = 0;
		}
	}

	public synchronized void drop(DropTargetDropEvent dropTargetDropEvent) {
		Log.log(Log.LEVEL_TRACE, MODULE, "drop - dtde");

		if (!isDragOK(dropTargetDropEvent)) {
			Log.log(Log.LEVEL_TRACE, MODULE, "Refusing drop");
			dropTargetDropEvent.rejectDrop();
			return;
		}

		Log.log(Log.LEVEL_TRACE, MODULE, "Accepting drop");

		try {
			Transferable tr = dropTargetDropEvent.getTransferable();

			dropTargetDropEvent.acceptDrop(
					DnDConstants.ACTION_COPY_OR_MOVE | DnDConstants.ACTION_REFERENCE);

			//thanks John Zukowski
			Point dropLocation = dropTargetDropEvent.getLocation();
			int listIndex = snapIndex((int) dropLocation.getY());

			if (tr.isDataFlavorSupported(DataFlavor.javaFileListFlavor)) {
				List fileList = (List)
						tr.getTransferData(DataFlavor.javaFileListFlavor);

				/* recursively add contents of directories */
				try {
					fileList = expandDirectories(fileList);
				} catch (IOException ioe) {
					Log.log(Log.LEVEL_ERROR, MODULE, "i/o exception listing dirs in a drop");
					Log.logStack(Log.LEVEL_ERROR, MODULE);
					JOptionPane.showMessageDialog(
							null,
							grRes.getString(MODULE, "imgError"),
							grRes.getString(MODULE, "dragError"),
							JOptionPane.ERROR_MESSAGE);
				}

				Log.log(Log.LEVEL_TRACE, MODULE, "Adding " + fileList.size() + " new files(s) to list at index " + listIndex);

				mf.addPictures((File[]) fileList.toArray(new File[0]), listIndex, false);
			} else {
				List pictureList = (List)
						tr.getTransferData(PictureSelection.flavors[0]);

				Log.log(Log.LEVEL_TRACE, MODULE, "Adding " + pictureList.size() + " new pictures(s) to list at index " + listIndex);

				mf.addPictures((Picture[]) pictureList.toArray(new Picture[0]), listIndex, true);
			}

			dropTargetDropEvent.getDropTargetContext().dropComplete(true);
		} catch (IOException io) {
			Log.logException(Log.LEVEL_ERROR, MODULE, io);
			dropTargetDropEvent.getDropTargetContext().dropComplete(false);
		} catch (UnsupportedFlavorException ufe) {
			Log.logException(Log.LEVEL_ERROR, MODULE, ufe);
			dropTargetDropEvent.getDropTargetContext().dropComplete(false);
		}
	}

	public void dropActionChanged(DropTargetDragEvent dropTargetDragEvent) {
		Log.log(Log.LEVEL_TRACE, MODULE, "dropActionChanged - dtde");
		if (!isDragOK(dropTargetDragEvent)) {
			dropTargetDragEvent.rejectDrag();
			return;
		}

		//dropTargetDragEvent.acceptDrag( DnDConstants.ACTION_COPY_OR_MOVE | DnDConstants.ACTION_REFERENCE );
	}


	/* ********* DragSourceListener ********** */
	public void dragDropEnd(DragSourceDropEvent dragSourceDropEvent) {
		Log.log(Log.LEVEL_TRACE, MODULE, "dragDropEnd - dsde");

		if (dragSourceDropEvent.getDropSuccess() && dragSourceDropEvent.getDropAction() == DnDConstants.ACTION_MOVE) {
			PictureSelection ps = (PictureSelection) dragSourceDropEvent.getDragSourceContext().getTransferable();

			for (Iterator it = ps.iterator(); it.hasNext();) {
				mf.getCurrentAlbum().removePicture((Picture) it.next());
			}
		}
	}

	public void dragEnter(DragSourceDragEvent dragSourceDragEvent) {
	}

	public void dragExit(DragSourceEvent dragSourceEvent) {
	}

	public void dragOver(DragSourceDragEvent dragSourceDragEvent) {
	}

	public void dropActionChanged(DragSourceDragEvent dragSourceDragEvent) {
	}

	/* ********* DragGestureListener ********** */
	public void dragGestureRecognized(DragGestureEvent event) {
		Log.log(Log.LEVEL_TRACE, MODULE, "dragGestureRecognized");
		PictureSelection ps = new PictureSelection(this);

		//pull out existing pictures
		if (!ps.isEmpty()) {
			dragSource.startDrag(event, DragSource.DefaultMoveDrop, ps, this);
		} else {
			Log.log(Log.LEVEL_TRACE, MODULE, "nothing was selected");
		}
	}


	/* ********* Utilities ********** */
	List expandDirectories(List filesAndFolders)
			throws IOException {
		ArrayList allFilesList = new ArrayList();

		Iterator iter = filesAndFolders.iterator();
		while (iter.hasNext()) {
			File f = (File) iter.next();
			if (f.isDirectory()) {
				allFilesList.addAll(listFilesRecursive(f));
			} else {
				allFilesList.add(f);
			}
		}

		return allFilesList;
	}

	static List listFilesRecursive(File dir)
			throws IOException {
		ArrayList ret = new ArrayList();

		/* File.listFiles: stupid call returns null if there's an
				   i/o exception *or* if the file is not a directory, making a mess.
				   http://java.sun.com/j2se/1.4/docs/api/java/io/File.html#listFiles() */
		File[] fileArray = dir.listFiles();
		if (fileArray == null) {
			if (dir.isDirectory()) {
				/* convert to exception */
				throw new IOException("i/o exception listing directory: " + dir.getPath());
			} else {
				/* this method should only be called on a directory */
				Log.log(Log.LEVEL_CRITICAL, MODULE, "assertion failed: listFilesRecursive called on a non-dir file");
				return ret;
			}
		}

		List files = Arrays.asList(fileArray);

		Iterator iter = files.iterator();
		while (iter.hasNext()) {
			File f = (File) iter.next();
			if (f.isDirectory()) {
				ret.addAll(listFilesRecursive(f));
			} else {
				ret.add(f);
			}
		}

		return ret;
	}

	public void setMainFrame(MainFrame mf) {
		this.mf = mf;
	}

	int safeGetFixedCellHeight() {
		int height = getFixedCellHeight();
		if (height == -1) {
			height = (int) getCellRenderer()
					.getListCellRendererComponent(this, null, -1, false, false)
					.getPreferredSize().getHeight();
		}

		return height;
	}

	public int snap(int y) {
		return snapIndex(y) * safeGetFixedCellHeight();
	}

	public int snapIndex(int y) {
		int height = safeGetFixedCellHeight();

		int row = (int) Math.floor(((float) y / height) + .5);
		if (row > getModel().getSize()) {
			row = getModel().getSize();
		}

		return row;
	}
}