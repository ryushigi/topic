@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

@echo off
setlocal

:RETRY

echo EC2インスタンス起動中...

echo "実行コマンド"

if errorlevel 1 (
    echo 起動失敗。2秒後にリトライします...
    timeout /t 2 /nobreak >nul
    goto RETRY
)


:notify
setlocal
set "NOTIFY_TITLE=テスト"
set "NOTIFY_MSG=実行結果です。"
set "PS=Add-Type -AssemblyName System.Windows.Forms;"
set "PS=%PS% Add-Type -AssemblyName System.Drawing;"
set "PS=%PS% $t = $env:NOTIFY_TITLE; if ([string]::IsNullOrEmpty($t)) { $t = 'Notification' };"
set "PS=%PS% $m = $env:NOTIFY_MSG; if ([string]::IsNullOrEmpty($m)) { $m = '(no message)' };"
set "PS=%PS% $ni = New-Object System.Windows.Forms.NotifyIcon;"
set "PS=%PS% $ni.Icon = [System.Drawing.SystemIcons]::Information;"
set "PS=%PS% $ni.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info;"
set "PS=%PS% $ni.BalloonTipTitle = $t;"
set "PS=%PS% $ni.BalloonTipText = $m;"
set "PS=%PS% $ni.Visible = $true;"
set "PS=%PS% $ni.ShowBalloonTip(10000);"
set "PS=%PS% Start-Sleep -Seconds 8; $ni.Dispose()"
powershell -NoProfile -ExecutionPolicy Bypass -Command "%PS%" &
endlocal
exit /b