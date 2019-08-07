$ErrorActionPreference = 'Stop'

Write-Host "Starting Build"

if ($IsWindows) {
    $env:Path += ";$env:PYTHON;$env:Python\Scripts"
    refreshenv
} elseif ($IsLinux) {
    Set-Alias python "/usr/bin/python$env:PYTHON_VERSION"
}

python -m pip install --upgrade pip
python -m pip install --user pyinstaller
pyinstaller -F ./main.py