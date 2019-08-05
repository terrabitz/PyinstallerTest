$ErrorActionPreference = 'Stop'

Write-Host "Starting Build"

pip3 install pyinstaller
pyinstaller -F ./main.py