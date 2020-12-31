function Write-BranchName () {
    try {
        $branch = git rev-parse --abbrev-ref HEAD

        if ($branch -eq "HEAD") {
            # we're probably in detached HEAD state, so print the SHA
            $branch = git rev-parse --short HEAD
            Write-Host " ($branch)" -ForegroundColor "red" -NoNewline
        }
        else {
            # we're on an actual branch, so print it
            Write-Host " ($branch)" -ForegroundColor "magenta" -NoNewline
        }
    } catch {
        # we'll end up here if we're in a newly initiated git repo
        Write-Host " (no branches yet)" -ForegroundColor "yellow" -NoNewline
    }
}

function global:prompt {
    Write-Host -Object "-" -NoNewline -ForegroundColor Red

    Write-Host -Object "$env:UserName " -NoNewline -ForegroundColor Green

    $Location = Get-Location
    Write-Host -Object "$Location" -NoNewline -ForegroundColor Blue

    if (Test-Path .git) {
        Write-BranchName
    }

    return " "
}