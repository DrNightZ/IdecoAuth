<#
Version 1.0

Description: Ideco Authentication

SCLI, Penkov Mikhail (c) 2022
#>


$url = "http://ya.ru"
$ie = New-Object -com "InternetExplorer.Application"
$ie.Visible = $True
$id = $(Get-Process |  Where-Object { $_.mainWindowHandle -eq $ie.HWND } ).Id
$ie.Visible = $False
$ie.Navigate($url)

Do {Start-Sleep -Seconds 1} Until (-not $ie.busy) 

Get-Process |  Where-Object { $_.Id -eq $id } | Stop-Process
