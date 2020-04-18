

#(1)_.Add log Vars
$fname   = 'LogFile.CSV'
$luser   =  $env:USERNAME
$Logpath = 'C:\Temp\Migration_\Logs_\'
$now     = get-date -format 'dd-MMM-yyyy-HH-mm'
$Logfile = $Logpath + $now + "_" + $fname

#(2)_.Add log Function 
function Write-Log {
     [CmdletBinding()]
     param(
         [Parameter()]
         [ValidateNotNullOrEmpty()]
         [string]$Message,
 
         [Parameter()]
         [ValidateNotNullOrEmpty()]
         [ValidateSet('Information','Warning','Error')]
         [string]$Severity = 'Information'
     )

     [pscustomobject]@{
         Time = (Get-Date -f g)
         Message = $Message
         Severity = $Severity
       
     } | Export-Csv -Path $Logfile -Append -NoTypeInformation
 }

 
 #(3)_.Write to log examples 
 $message1 = 'This is Error'
 Write-Log -Message "test" -Severity Error

 #(4)_.Write to log examples 
  $message2 = 'This is Information'
 Write-Log -Message "Log message inf" -Severity Information

 #(5)_.Write to log examples 
  $message3 = 'This is Warning '
 Write-Log -Message "test" -Severity Warning







