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
