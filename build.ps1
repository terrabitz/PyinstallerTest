Write-Host "Starting Build"

if ($env:APPVEYOR_REPO_TAG -eq "true") {
    $newName = "pyinstaller-${env:APPVEYOR_REPO_TAG_NAME}_win"
} else {
    $newName = "pyinstaller-build${env:APPVEYOR_BUILD_VERSION}_win"
}

pyinstaller -F ./main.py -n $newName