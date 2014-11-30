# users

user {
  name    => Medienwerkstatt,
  ensure  => present,
  comment => 'Medienwerkstatt',
  home    => 'C:\Users\medienwerkstatt',
  managehome => true,
  password => 'Mwst2010',
}


# registry


 registry::value { 'KatMouse On Startup':
  key   => 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run',
  value => 'KatMouse',
  data  => 'C:\Program Files (x86)\KatMouse\KatMouse.exe'
}



 # /root/training-manifests/2.file.pp

    file {'/tmp/test1':
      ensure  => present,
      content => "Hi.",
    }

    file {'/tmp/test2':
      ensure => directory,
      mode   => 644,
    }

    file {'/tmp/test3':
      ensure => link,
      target => '/tmp/test1',
    }

    notify {"I'm notifying you.":}
    notify {"So am I!":}


      file {'/tmp/test1':
      ensure  => present,
      content => "Hi.",
    }

    notify {'/tmp/test1 has already been synced.':
      require => File['/tmp/test1'],
    }


     # /root/examples/break_ssh.pp
    file { '/etc/ssh/sshd_config':
      ensure => file,
      mode   => 600,
      source => '/root/examples/sshd_config',
    }
    service { 'sshd':
      ensure     => running,
      enable     => true,
      subscribe  => File['/etc/ssh/sshd_config'],
    }


    class rich::packages {
  $pkg = 'notepadplusplus'

  package { $pkg:
    ensure          => installed,
    provider        => 'chocolatey',
    install_options => ['-pre','-params','-mypkgparam'],
    source          => 'https://myfeed.example.com/api/v2',
  }
}



If you want to set this provider as the site-wide default, add to your site.pp:

if $::kernel == windows {
  # default package provider
  Package { provider => chocolatey }
}

this is versionable so ensure => '1.0' works
this is upgradeable
supports latest (checks upstream), absent (uninstall)
supports install_options for pre-release, other cli


include chocolatey_sw

Full configuration options:

class { 'chocolatey_sw':
  command  => 'iex ...',                      # command to install Chocolatey
  creates  => ['C:\ProgramData\chocolatey'],  # check for install directories
  provider => powershell,                     # command Exec provider
}



Beispiel:

include chocolatey_sw

package { 'cygwin':
  ensure   => present,
  provider => 'chocolatey',
  require  => Class['chocolatey_sw'],
}


# puppet module install rismoney-chocolatey
# puppet module install ceritsc-chocolatey_sw



C:\> choco install teamviewer.host
TeamViewer Host 9.0.24951

TeamViewer Host is running as a system service and is used for 24/7 access to remote computers, 
including login/logout and remote reboot - optimized for server maintenance or home-office access



windows::shortcut { 'C:\Users\justin\Desktop\python.lnk':
  target      => 'C:\Python27\python.exe',
  description => 'Python 2.7',
}