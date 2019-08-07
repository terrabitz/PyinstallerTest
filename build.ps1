$ErrorActionPreference = 'Stop'

Write-Host "Starting Build"

if ($IsWindows) {
    Set-Alias python3 "$env:PYTHON\python.exe"
    Set-Alias pip3 "$env:PYTHON\Scripts\pip.exe"
    $env:PATH += ";C:\Users\appveyor\AppData\Roaming\Python\Python$env:PYTHON_VERSION\Scripts"
}

pip3 install --upgrade pip
try {
    pip3 install --user pyinstaller
} catch {
    # Do nothing
}
pyinstaller -F ./main.py