#file { 'C:\tmp\redshirt':
#	ensure => directory,
#}

file { 'C:\Trash\logan':
	ensure => file,
}

notify {"I'm notifying you.":}
notify {"So am I!":}