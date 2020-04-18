

function Function-SentMail{
    [CmdletBinding()]
    param(
        [Parameter(Position=0,mandatory=$true)]
        [string] $smtpServer)]

    process{
       
     Write-Host 'Sending mail' -ForegroundColor DarkYellow

     #(1)_.Define SMTP server FQDN/IP address
     $smtpServer = 'MailServer1.CloudSec365.onmicrosoft.com'

     #(2)_.Creating a mail object
     $msg = new-object Net.Mail.MailMessage

     #(3)_.Creating SMTP server object
     $smtp = new-object Net.Mail.SmtpClient($smtpServer)

     #(4)_.Constructing mail structure, adjust each variable 
     $msg.From = 'RelayTest@CloudSec365.onmicrosoft.com'
     $msg.ReplyTo = 'Casey.Dedeal@CloudSec365.onmicrosoft.com'
     $msg.To.Add('Casey.Dedeal@CloudSec365.onmicrosoft.com')
     $msg.subject = 'My Subject'
     $msg.body = 'This is the email Body.'

     #(5)_.Sending email 
     $smtp.Send($msg) 

    }
}