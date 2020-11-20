# PowerShell-CustomPrompt

## Option #1
Copy file "Microsoft.PowerShell_profile.ps1" to: Documents\PowerShell\Microsoft.PowerShell_profile.ps1

## Option #2
```powershell
New-Item -ItemType File -Path $PROFILE -Force
nano $PROFILE
```
Paste there what is in "Microsoft.PowerShell_profile.ps1"