include chocolatey_sw


windows::shortcut { 'C:\Users\larry\Desktop\vlc.lnk':
  target      => 'C:\Program Files\VideoLAN\VLC\vlc',
  description => 'VLC',
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
}

package { 'adblockpluschrome':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

/*
CCEnhancer is a small tool which adds support for over 900 new programs into the popular program CCleaner. The tool uses the winapp2.ini system built into CCleaner to easily add new rules and definitions for programs. The rules were sourced mainly from the Piriform Support Forum, with several sourced from other places around the internet.

*/

package { 'ccenhancer':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}




/*

BleachBit deletes unnecessary files to free valuable disk space, maintain privacy, and remove junk.
Rid your system of old clutter including cache, cookies, Internet history, localizations, logs, temporary files, and broken shortcuts.
Designed for Linux and Windows systems, it wipes clean Adobe Reader, APT, Bash, Beagle, Chromium, Epiphany, Firefox, Flash, GIMP, Google Chrome, Google Earth, Internet Explorer, Java, KDE, OpenOffice.org, Opera, RealPlayer, Safari, Second Life viewer, Skype, VIM, XChat, Yum, and more.

*/

package { 'bleachbit':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


/*

Speccy will give you detailed statistics on every piece of hardware in your computer. Including CPU, Motherboard, RAM, Graphics Cards, Hard Disks, Optical Drives, Audio support. Additionally Speccy adds the temperatures of your different components, so you can easily see if there's a problem! * Processor brand and model * Hard drive size and speed ... More information

*/

package { 'speccy':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


/*

Launchy is a free cross-platform utility designed to help you forget about your start menu, the icons on your desktop, and even your file manager. Launchy indexes the programs in your start menu and can launch your documents, project files, folders, and bookmarks with just a few keystrokes!

*/


package { 'launchy':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}



/*

Driver Fusion is the complete device and driver solution for your PC that can manage and monitor your devices and their drivers. You can install and uninstall drivers with Driver Fusion, including the ability to backup, restore and download drivers with ease. The effortless health check, including an automatic driver updater to update outdated driv... More information

*/



package { 'driverfusion':
  ensure   => absent,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


/* requires confirmations */

package { 'xplorer2':
  ensure   => absent,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'KatMouse':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'ccleaner':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'kcleaner':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { '7zip':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'sharex':
  ensure   => absent,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'spybot':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'clamwin':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'grepwin':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'QTTabBar':
  ensure   => absent,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

