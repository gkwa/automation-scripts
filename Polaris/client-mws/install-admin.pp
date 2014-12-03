include chocolatey_sw

/* Hardware driver update tools */


package { 'driverbooster':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


package { 'dumo':
  ensure   => absent,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


package { 'drivergenius':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

/*

  Anti Spyware / Malware tools

*/

package { 'superantispyware':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'AdwCleanerPortable':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'JRTPortable':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

/*

Combofix is a smart spyware and malware removal application known for its speed and effectiveness.
ComboFix also displays a report that can be used by trained helpers to remove malware that is not automatically removed by the program.
You should not run ComboFix unless you are specifically asked to by a helper.
Also, due to the power of this tool it is strongly advised that you do not attempt to act upon any of the information displayed by ComboFix without supervision from someone who has been properly trained.
If you do so, it may lead to problems with the normal functionality of your computer.

*/

package { 'combofix':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


/*

  Editor tools

*/


package { 'SublimeText2':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


/*

  Cleaning tools: remove junk, uninstall cleanly

*/


package { 'ccleaner':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


package { 'Revo.Uninstaller':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


/*

  Hardware & Software info

*/

package { 'speccy':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


/*

How many times have you walked up to a system in your office and needed to click 
through several diagnostic windows to remind yourself of important aspects of its configuration, 
such as its name, IP address, or operating system version? If you manage multiple computers you 
probably need BGInfo. It automatically displays relevant information about a Windows computer 
on the desktop's background, such as the computer name, IP address, service pack version, and more. 
You can edit any field as well as the font and background colors, and can place it in 
your startup folder so that it runs every boot, or even configure it to display as the background 
for the logon screen.
Because BGInfo simply writes a new desktop bitmap and exits, you don't have to worry about 
it consuming system resources or interfering with other applications.

*/

package { 'bginfo':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


/*

ProduKey is a small utility that displays the ProductID and the CD-Key of 
MS-Office, Windows, Exchange Server, and SQL Server installed on your computer. 
You can view this information for your current running operating system, 
or for another operating system/computer - by using command-line options. 
This utility can be useful if you lost the product key of your Windows/Office, 
and you want to reinstall it on your computer.

*/

package { 'ProduKey':
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
