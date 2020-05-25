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

  if([String]::IsNullOrEmpty($attachmentFilePath)){
    Send-MailMessage -SmtpServer $smtpServer -Port $smtpPort -From $From -To $To -Subject $subject -Body $body -Encoding ([System.Text.Encoding]::UTF8)
  }else{
    Send-MailMessage -SmtpServer $smtpServer -Port $smtpPort -From $From -To $To -Attachments $attachmentFilePath -Subject $subject -Body $body -Encoding ([System.Text.Encoding]::UTF8)
  }
}
