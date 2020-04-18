
<#    

.NOTES

#=============================================
# Script      : Function-Connect-SP-Online.ps1
# Created     : ISE 3.0 
# Author(s)   : Casey.Dedeal 
# Date        : 04/17/2020 20:14:09 
# Org         : ETC Solutions
# File Name   : Function-Connect-SP-Online.ps1
# Comments    :
# Assumptions :
#==============================================

 
SYNOPSIS           : Function-Connect-SP-Online.ps1
DESCRIPTION        : Conect SharPoint Online
Acknowledgements   : Open license
Limitations        : None
Known issues       : None
Credits            : Please visit: 
                          https://simplepowershell.blogspot.com
                          https://msazure365.blogspot.com

.EXAMPLE

  .\Function-Connect-SP-Online.ps1 -OrgName CloudSec365


  MAP:

  -----------
  #(1)_.Function to connect SharPoint OnLine
 

#>

 

#(1)_.Function to connect SharPoint OnLine
Function Function-Connect-SP-Online {
   
  [CmdletBinding()]
  param(
       [Parameter(Position=0,mandatory=$true)]
       [string] $OrgName)

 Try{

$url = "https://$orgName-admin.sharepoint.com"
Connect-SPOService -Url $url -ErrorAction Stop

}catch{
    
    $errMessage = "$($PSItem.ToString())"
    Write-Warning 'Error has occoured'
    Write-host "Problem FOUND: $errMessage" -f red -b White
   } 
 }


