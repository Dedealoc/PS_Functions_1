



<#    

.NOTES

#=============================================
# Script      : Function-Connect-PnP-Online.ps1
# Created     : ISE 3.0 
# Author(s)   : Casey.Dedeal 
# Date        : 04/17/2020 19:30:09 
# Org         : ETC Solutions
# File Name   : Function-Connect-PnP-Online
# Comments    : Connects PnP Online WebLogin
# Assumptions : Azure/SP Onoine Tenant
#==============================================

 
SYNOPSIS           : Connect SP Online PnP Module
DESCRIPTION        : Connecting SP Online
Acknowledgements   : Open license
Limitations        : None
Known issues       : None
Credits            : Please visit: 
                          https://simplepowershell.blogspot.com
                          https://msazure365.blogspot.com

.EXAMPLE

  .\Function-Connect-PnP-Online -OrgName CloudSec365


  MAP:

  -----------
  #(1)_.Connect PnP Function
 

#>

 


#(1)_.Connect PnP Function
function Function-Connect-PnP-Online{
    [CmdletBinding()]
    param(
        [Parameter(Position=0,mandatory=$true)]
        [string] $OrgName)
 Try{

$url = "https://$orgName-admin.sharepoint.com"
Connect-PnPOnline -Url $url -ErrorAction Stop -UseWebLogin; 

}catch{
    
    $errMessage = "$($PSItem.ToString())"
    Write-Warning 'Error has occoured'
    Write-host "Problem FOUND: $errMessage " -f red -b White

   } 
}

