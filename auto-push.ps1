$repo = "C:\Users\krsah\OneDrive\Documents\JAVA DSA CODE"
$git = "C:\Program Files\Git\cmd\git.exe"

Set-Location $repo

while ($true) {
    $status = & $git status --porcelain
    if ($status) {
        try {
            & $git add -A | Out-Null
            & $git commit -m "Auto commit from VS Code" 2>$null | Out-Null
            & $git push origin HEAD
            Write-Host "Pushed changes at $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
        }
        catch {
            Write-Host "Push failed: $($_.Exception.Message)"
        }
    }

    Start-Sleep -Seconds 10
}
