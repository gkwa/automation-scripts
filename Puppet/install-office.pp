#package { 'xplorer2pro':
#    ensure          => installed,
#    provider        => 'chocolatey',
    #install_options => ['-pre','-params','-mypkgparam'],
    #source          => 'https://myfeed.example.com/api/v2',
# }

include chocolatey_sw


/*

Marker is a markdown editor for Windows. It features dual panes to allow for quick editing and viewing, very fast execution, small memory usage, and it's open source!

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

Scribus is an Open Source program that brings professional page layout to Linux/UNIX, Mac OS X, OS/2 Warp 4, eComStation, Haiku and 
Windows desktops with a combination of press-ready output and new approaches to page design. 
Underneath a modern and user-friendly interface, Scribus supports professional publishing features, such as color separation...

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


/*
Say goodbye to the command line – use the full capability of Git and Mercurial in the SourceTree desktop app. Manage all your repositories, hosted or local, through SourceTree's simple interface.
*/


package { 'SourceTree':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

/*

How many times have you walked up to a system in your office and needed to click through several diagnostic windows to remind yourself of important aspects of its configuration, such as its name, IP address, or operating system version? If you manage multiple computers you probably need BGInfo. It automatically displays relevant information about a... More information

*/

package { 'bginfo':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


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

package { 'greenshot':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'ProduKey':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'skitch':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'paint.net':
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
