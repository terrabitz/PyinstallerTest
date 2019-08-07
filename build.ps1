$ErrorActionPreference = 'Stop'

Write-Host "Starting Build"

pip install pyinstaller
pyinstaller -F ./main.py