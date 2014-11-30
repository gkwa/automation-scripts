Import-Module Carbon

# Get-PathToHostsFile
# C:\Windows\system32\drivers\etc\hosts



# INI
# Set-IniEntry -Path C:\Users\rspektor\mercurial.ini -Section extensions -Name share -Value ''

# Registry
# Get-RegistryKeyValue -Path 'hklm:\Software\Carbon\Test' -Name 'Title'
# Install-RegistryKey -Path 'hklm:\Software\Carbon\Test'
# Set-RegistryKeyValue -Path 'hklm:\Software\Carbon\Test -Name Status -String foobar
# Set-RegistryKeyValue -Path 'hklm:\Software\Carbon\Test -Name ComputerName -String '%ComputerName%' -Expand
# Set-RegistryKeyValue -Path 'hklm:\Software\Carbon\Test -Name Movies -String ('Signs','Star Wars','Raiders of the Lost Ark')
# Set-RegistryKeyValue -Path hklm:\Software\Carbon\Test -Name 'SomeBytes' -Binary ([byte[]]@( 1, 2, 3, 4))
# Set-RegistryKeyValue -Path hklm:\Software\Carbon\Test -Name 'AnInt' -DWord 48043
# Set-RegistryKeyValue -Path hklm:\Software\Carbon\Test -Name 'AnInt64' -QWord 9223372036854775807
# Set-RegistryKeyValue -Path hklm:\Software\Carbon\Test -Name 'UsedToBeAStringNowShouldBeDWord' -DWord 1 -Force


# Get-ScheduledTask
Get-ScheduledTask -Name '*Microsoft*'