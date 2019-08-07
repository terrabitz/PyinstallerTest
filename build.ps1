$ErrorActionPreference = 'Stop'

Write-Host "Starting Build"

if ($IsWindows) {
    $pythonLocation = "$env:PYTHON\python.exe"
} elseif ($IsLinux) {
    $pythonLocation = "/usr/bin/python$env:PYTHON_VERSION"
}

Set-Alias python $pythonLocation

python -m pip install --upgrade pip
python -m pip install --user pyinstaller
pyinstaller -F ./main.py