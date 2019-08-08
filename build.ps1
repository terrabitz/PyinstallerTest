Write-Host "Starting Build"

pyinstaller -F ./main.py
if ($env:APPVEYOR_REPO_TAG) {
    $newName = "pyinstaller-${env:APPVEYOR_REPO_TAG}.exe"
} else {
    $newName = "pyinstaller-build${env:APPVEYOR_BUILD_VERSION}.exe"
}
Move-Item ./dist/main.exe ./dist/$newName