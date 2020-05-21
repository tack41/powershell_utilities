function SendMail{
  Param(
    [Parameter(Mandatory)]
    [String] $smtpServer,

    [Parameter(Mandatory)]
    [Int] $smtpPort,

    [Parameter(Mandatory)]
    [String] $from,

    [Parameter(Mandatory)]
    [String] $to,

    [Parameter(Mandatory)]
    [String] $subject,

    [Parameter(Mandatory)]
    [String] $body,

    [Parameter()]
    [String] $attachmentFilePath = ""
  )

  if([String]::IsNullOrEmpty($attachementFilePath)){
    Send-MailMessage -SmtpServer $smtpServer -Port $smtpPortT -From $FromM -To $To -Subject $subject -Body $body -Encoding ([System.Text.Encoding]::UTF8)
  }else{
    Send-MailMessage -SmtpServer $smtpServer -Port $smtpPortT -From $FromM -To $To -Attachments $attachmentFilePath-Subject $subject -Body $body -Encoding ([System.Text.Encoding]::UTF8)

  }

}
