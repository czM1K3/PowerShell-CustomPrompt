function global:prompt {
    Write-Host -Object "-" -NoNewline -ForegroundColor Red

    $PwdPath = Split-Path -Path $pwd -Leaf
    Write-Host -Object "$PwdPath " -NoNewline -ForegroundColor Green
    
    $Location = Get-Location
    Write-Host -Object "$Location" -NoNewline -ForegroundColor Blue
    
    return " "
}