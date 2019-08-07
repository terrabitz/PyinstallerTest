$ErrorActionPreference = 'Stop'

Write-Host "Starting Build"

pyinstaller -F ./main.py