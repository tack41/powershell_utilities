Set-StrictMode -Version latest
$ErrorActionPreference = "Stop"

$scriptPath = $MyInvocation.MyCommand.Path
$parentPath = Split-Path -Parent $scriptPath
$parentparentPath = Split-Path -Parent $parentPath

# ファイルの内容を変数に格納
$fileContents = ((Get-Content -Path $LOGFILE -ReadCount 0) -join "`n") 
