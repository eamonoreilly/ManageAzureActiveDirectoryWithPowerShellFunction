# Azure Functions profile.ps1
#
# This profile.ps1 will get executed every "cold start" of your Function App.
# "cold start" occurs when:
#
# * A Function App starts up for the very first time
# * A Function App starts up after being de-allocated due to inactivity
#
# You can define helper functions, run commands, or specify environment variables
# NOTE: any variables defined that are not environment variables will get reset after the first execution

# Authenticate with Azure PowerShell using MSI.
# Remove this if you are not planning on using MSI or Azure PowerShell.
if ($env:MSI_SECRET -and (Get-Module -ListAvailable Az.Accounts)) {
    Connect-AzAccount -Identity
}

# Get path to the 64bit version of PowerShell and set an environment variable so it can be used in functions
$64bitPowerShellPath = Get-ChildItem -Path $Env:Windir\WinSxS -Filter PowerShell.exe -Recurse -ErrorAction SilentlyContinue | Where-Object {$_.FullName -match "amd64"}
$env:64bitPowerShellPath=$64bitPowerShellPath.VersionInfo.FileName

# Uncomment the next line to enable legacy AzureRm alias in Azure PowerShell.
# Enable-AzureRmAlias

# You can also define functions or aliases that can be referenced in any of your PowerShell functions.
