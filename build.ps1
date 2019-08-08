Write-Host "Starting Build"

pyinstaller -F ./main.py
Write-Host $env:APPVEYOR_REPO_TAG.gettype().name
if ($env:APPVEYOR_REPO_TAG -eq "true") {
    $newName = "pyinstaller-${env:APPVEYOR_REPO_TAG_NAME}.exe"
} else {
    $newName = "pyinstaller-build${env:APPVEYOR_BUILD_VERSION}.exe"
}
Move-Item ./dist/main.exe ./dist/$newName