Function Set-WallPaper($Value)
{
 # Image
 Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name wallpaper -Value $value
 # Style (0=Centered, 2=Filled)
 Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name WallpaperStyle -Value "2"
 # Update
 rundll32.exe user32.dll, UpdatePerUserSystemParameters
}

$Yosemite1 = "C:\Users\larry\Desktop Backgrounds\Yosemite1.jpg"
$Yosemite2 = "C:\Users\larry\Desktop Backgrounds\Yosemite2.jpg"

Set-WallPaper -value $Yosemite1




# You can invoke a Verb (Pin to Taskbar) using the Shell.Application COM object. Here's some example code

# http://gallery.technet.microsoft.com/scriptcenter/b66434f1-4b3f-4a94-8dc3-e406eb30b750

# The example is somewhat complicated. Here is a simplified version

$shell = new-object -com "Shell.Application"  
$folder = $shell.Namespace('C:\Windows')    
$item = $folder.Parsename('firefox.exe')

# Then

$verb = $item.Verbs() | ? {$_.Name -eq 'Pin to Tas&kbar'}
if ($verb) {$verb.DoIt()}

# Or

# $item.invokeverb('taskbarpin')





