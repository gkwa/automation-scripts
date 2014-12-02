include chocolatey_sw


/*

Marker is a markdown editor for Windows. 
It features dual panes to allow for quick editing and viewing, very fast execution, 
small memory usage, and it's open source!

*/

package { 'marker':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


/*
GanttProject is a cross-platform desktop tool for project scheduling and management.
*/

package { 'ganttproject':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

/*

WinImage is a fully-fledged disk-imaging suite for easy creation, 
reading and editing of many image formats and fileystems, including DMF, VHD, FAT, ISO, NTFS and Linux. 
The disk image is an exact copy of a physical disk (floppy, CD-ROM, hard disk, USB, VHD disk, etc.) 
or a partition that preserves the original structure. 
With WinImage in place, you can recreate the disk image on the hard drive or other media, view its content, 
extract image-based files, add new files and directories, change the format, and defragment the image. 
All this and more is delivered in one intuitive user interface that enables imaging right out of the box.

The program has many utilitarian uses at home and in the office. 
As a serious PC user, you probably have tons of old but still useful floppy disks. 
With WinImage in place, you can turn them into disk images, which can be stored on the hard drive 
and recreated, when a need arises. In combination with a CD creating tool, 
WinImage can help you create your own custom boot disk with hardware diagnostic or virus cleaning software 
to bring a problem PC back up and running without being in Windows. As a hard-disk backup solution, 
WinImage allows you to save hours and even days restoring a system and configurations on a machine 
that has experienced a hard-disk crash or software corruption. 
Along with homes and offices, this ability is a must for training classes, 
where restoring torn down PC configurations quickly is critical.

*/


package { 'WinImage':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}



package { 'ExcelConverter':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

/*

Scribus is an Open Source program that brings professional page layout to 
Linux/UNIX, Mac OS X, OS/2 Warp 4, eComStation, Haiku and 
Windows desktops with a combination of press-ready output and new approaches to page design. 
Underneath a modern and user-friendly interface, Scribus supports professional publishing features, 
such as color separation...

*/


package { 'scribus':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


/* 

Toggl – Time Tracking that works 

!! Doesnt install

*/

/*
package { 'toggl':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}
*/




# Zim is a graphical text editor used to maintain a collection of wiki pages. 
# Each page can contain links to other pages, simple formatting and images. 
# Pages are stored in a folder structure, like in an outliner, and can have attachments. 
# Creating a new page is as easy as linking to a nonexistent page. 
# All data is stored in plain text files with wiki... More information

/*

package { 'zim':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


*/




package { 'skitch':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


package { 'WordViewer':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'Excel.Viewer':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'PowerpointViewer':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'calibre':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'FoxitReader':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}



package { 'PDFCreator':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}
