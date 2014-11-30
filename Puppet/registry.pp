
# https://forge.puppetlabs.com/puppetlabs/registry

# registry::value { 'MyApp Setting1':
#  key   => 'HKLM\Software\Vendor\PuppetLabs',
#  value => setting1,
#  data  => 'Hello World!'
# }


registry::value { 'KatMouse On Startup':
  key   => 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run',
  value => 'KatMouse',
  data  => 'C:\Program Files (x86)\KatMouse\KatMouse.exe'
}

