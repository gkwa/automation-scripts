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


