include chocolatey_sw

/*

Hulu Desktop is a lean-back viewing experience for your personal computer. 
It features a sleek new look that's optimized for use with standard Windows Media Center remote controls or
Apple remote controls, allowing you to navigate Hulu's entire library with just six buttons. 
For users without remotes, the application is keyboard and mouse-enabled.

*/



package { 'hulu.desktop':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


package { 'aimp':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'vlc':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


package { 'IrfanView':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


package { 'fsviewer':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

