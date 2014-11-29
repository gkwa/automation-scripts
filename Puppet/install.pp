#package { 'xplorer2pro':
#    ensure          => installed,
#    provider        => 'chocolatey',
    #install_options => ['-pre','-params','-mypkgparam'],
    #source          => 'https://myfeed.example.com/api/v2',
# }

include chocolatey_sw

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

package { 'sumatrapdf':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}

package { 'PDFCreator':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}
