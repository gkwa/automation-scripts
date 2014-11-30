# Put Carbon Module in Modules Folder first
Import-Module Carbon

# http://get-carbon.org/help/

# List all Carbon commands
# Get-Command | Where-Object { $_.ModuleName -eq 'Carbon' }

# Install-User -Username LSkywalker -Password "whydidn'tyoutellme" -Description "Luke Skywalker's account."

Uninstall-User -Username LSkywalker