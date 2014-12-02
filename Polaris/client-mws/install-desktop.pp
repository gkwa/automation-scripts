include chocolatey_sw


package { 'chromium':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'Firefox':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'adblockplusie':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'adblockplusfirefox':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
  #subscribe => Package['Firefox'],
}

package { 'adblockpluschrome':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
  #subscribe => Package['chromium'],
}

package { 'flashplayerplugin':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'flashplayeractivex':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

/*

  Screenshot utility

*/


package { 'greenshot':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

/*

Launchy is a free cross-platform utility designed to help you forget about your start menu, 
the icons on your desktop, and even your file manager. 
Launchy indexes the programs in your start menu and can launch your documents, project files, folders, 
and bookmarks with just a few keystrokes! 

*/

package { 'launchy':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { '7zip':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'KatMouse':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}
