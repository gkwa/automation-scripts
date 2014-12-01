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
}

package { 'adblockpluschrome':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}




