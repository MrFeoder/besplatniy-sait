$email = "site$((Get-Random -Min 1000 -Max 9999))@inbox.ru"
$password = "SitePass$((Get-Random -Min 100000 -Max 999999))"

$psi = New-Object System.Diagnostics.ProcessStartInfo
$psi.FileName = "npx.cmd"
$psi.Arguments = "surge"
$psi.WorkingDirectory = "C:\Users\Фёдор\site"
$psi.UseShellExecute = $false
$psi.RedirectStandardInput = $true
$psi.RedirectStandardOutput = $true
$psi.RedirectStandardError = $true

$p = [System.Diagnostics.Process]::Start($psi)

$stdin = $p.StandardInput
$stdout = $p.StandardOutput

Start-Sleep -Seconds 3

$stdin.WriteLine($email)
Start-Sleep -Seconds 1
$stdin.WriteLine($password)
Start-Sleep -Seconds 1

$output = $stdout.ReadToEnd()
$p.WaitForExit(30000)
Write-Output $output
