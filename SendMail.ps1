#メール送信
$SMTP_SERVER=""     #送信SMTPサーバのホスト名 or IPアドレス
$SMTP_PORT = ""     #送信SMTPサーバのポート番号
$MAIL_FROM = ""     #メール送信元
$MAIL_TO = ""       #メール送信先
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
