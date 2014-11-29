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