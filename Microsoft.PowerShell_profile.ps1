function global:prompt {
    Write-Host -Object "-" -NoNewline -ForegroundColor Red

    Write-Host -Object "$env:UserName " -NoNewline -ForegroundColor Green
    
    $Location = Get-Location
    Write-Host -Object "$Location" -NoNewline -ForegroundColor Blue
    
    return " "
}