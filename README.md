[![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3a%2f%2fraw.githubusercontent.com%2feamonoreilly%2fManageAzureActiveDirectoryWithPowerShellFunction%2fmaster%2fazuredeploy.json) 
<a href="http://armviz.io/#/?load=https%3a%2f%2fraw.githubusercontent.com%2feamonoreilly%2fManageAzureActiveDirectoryWithPowerShellFunction%2fmaster%2fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

# Example to show how to use AzureAD module with a PowerShell Azure Function

## Description

This function app will create a key vault and store the password of an Active Directory user that will be used in the function app.

As AzureAD module is not supported in PowerShell core and requires 64bit PowerShell, the function app launches the PowerShell.exe 64 bit process and runs the Azure AD commands in the $Script scriptblock.

## Resources created

* Key vault to store the password of the AD user that will authenticate to Azure Active directory with Connect-AzureAD
* Application insights resource to store logs
* PowerShell function app with sample code to authenticate to Azure AD
* Managed identity is enabled for the function app and granted access to the key vault to retrieve the password for the AD user

## Running the sample

You can run the sample locally by modifying the local settings file or run it directly in Azure without changes.
