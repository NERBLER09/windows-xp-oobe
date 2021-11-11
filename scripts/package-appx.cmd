echo Don't forget to run `npm run svelte-build` and `npm run package-win`

ren "%CD%\dist\win-unpacked\Windows XP OOBE Recreation.exe" XPOOBE.exe

echo Building AppX
electron-windows-store --input-directory "%CD%\dist\win-unpacked" --output-directory "%CD%\windows-store" --package-version 1.0.0.0 --package-name XPOOBE --package-display-name "Windows XP First Time Setup Recreation" --publisher-display-name "Nerbler09" --identity-name 11103Nerbler09.WindowsXPFirstTimeSetupRecreation -a "%CD%/public/images/appx"