$ErrorActionPreference = 'Stop'

Write-Host "Starting Build"

& "$env:PYTHON\Scripts\pip" install --user pyinstaller
pyinstaller -F ./main.py