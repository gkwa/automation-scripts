# Creating and Modifying Environment Variables

Get-ChildItem Env:

$Env:os

[environment]::GetEnvironmentVariable("Sample","User")

$env:TestVariable = "This is a test environment variable."

[Environment]::SetEnvironmentVariable("TestVariable", "Test value.", "User")

# Here we’re using the .NET Framework’s System.Environment class and the SetEnvironmentVariable method. As you can see, we’re passing this method three parameters:
# “TestVariable”, the name to be given to our new environment variable.
# “Test value.”, the value to be assigned to the new environment variable.
# “User” , which makes TestVariable a user-level environment variable. Alternatively, we could have set this to “Machine” (machine-level) or “Process” (process-level).

# Deleting Environment Variables
# So how do you get rid of an environment variable after you no longer need it? Well, one way is to use the Remove-Item cmdlet, like so:

Remove-Item Env:\TestVariable

Remove-Item Env:\ChocolateyInstall
$env:ChocolateyInstall

# set-executionpolicy remotesigned; get-executionPolicy

Get-ExecutionPolicy

        #  Restricted
        # AllSigned
        # RemoteSigned
        # Unrestricted
        # Bypass
        # Undefined


# ChocolateyInstall


PS> Set-ExecutionPolicy bypass; get-executionPolicy

PS> iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))


# Change Wallpaper / Theme

# rundll32.exe %SystemRoot%\system32\shell32.dll,Control_RunDLL %SystemRoot%\system32\desk.cpl desk,@Themes /Action:OpenTheme /file:""YOUPATH to the .theme"""

Function Set-WallPaper($Value)
{
 Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value
 rundll32.exe user32.dll, UpdatePerUserSystemParameters
}

Set-WallPaper -value "the path of you wallpaper"


# You can invoke a Verb (Pin to Taskbar) using the Shell.Application COM object. Here's some example code

# http://gallery.technet.microsoft.com/scriptcenter/b66434f1-4b3f-4a94-8dc3-e406eb30b750

# The example is somewhat complicated. Here is a simplified version
# C:\Program Files (x86)\Mozilla Firefox
$shell = new-object -com "Shell.Application"  
$folder = $shell.Namespace('C:\Windows')    
$item = $folder.Parsename('notepad.exe')
Then

$verb = $item.Verbs() | ? {$_.Name -eq 'Pin to Tas&kbar'}
if ($verb) {$verb.DoIt()}
Or

$item.invokeverb('taskbarpin')
