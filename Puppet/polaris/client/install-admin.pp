include chocolatey_sw




package { 'driverbooster':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'superantispyware':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'SublimeText2':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


package { 'speccy':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

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

/**/


/*

doesnt run, hangs after startup

*/

# package { 'ChocolateyGUI':
#   ensure   => absent,
#   provider => 'chocolatey',
#   require  => Class['chocolatey_sw'],
# }


/*

DebugView is an application that lets you monitor debug output on your local system, or any computer on the network that you can reach via TCP/IP. It is capable of displaying both kernel-mode and Win32 debug output, so you don't need a debugger to catch the debug output your applications or device drivers generate, nor do you need to modify your applications or drivers to use non-standard debug output APIs.

*/

# package { 'DebugView':
#   ensure   => present,
#   provider => 'chocolatey',
#   require  => Class['chocolatey_sw'],
# }


/*

DefaultProgramsEditor
Default Programs Editor 2.7.2675.2253
By: bdukes
Default Programs Editor makes it easy to fix file association settings in Windows, including context menu items, icons, and descriptions. Also: autoplay settings and default programs settings ...all without fiddling around in the registry.

*/

# package { 'DefaultProgramsEditor':
#   ensure   => present,
#   provider => 'chocolatey',
#   require  => Class['chocolatey_sw'],
# }

/*

Programmers Notepad - Windows programming editor with an integrated Hex viewer/editor. | Please install with chocolatey (http://nuget.org/List/Packages/chocolatey).

*/

# package { 'ProgrammersNotepad':
#   ensure   => absent,
#   provider => 'chocolatey',
#   require  => Class['chocolatey_sw'],
# }


/*

__HostsMan__ is a freeware application that lets you manage your Hosts file with ease. No Spyware! No Adware! No Viruses! 100% Freeware! Clean and simple.

*/

# package { 'hostsman':
#   ensure   => present,
#   provider => 'chocolatey',
#   require  => Class['chocolatey_sw'],
# }

