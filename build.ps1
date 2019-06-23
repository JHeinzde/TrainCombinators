Set-Location ..
Compress-Archive -Force -Path .\factorio_mod -DestinationPath .\train_combinator_0.1.0.zip
Remove-Item $env:APPDATA/Factorio/mods/train_combinator_0.1.0.zip
Copy-Item .\train_combinator_0.1.0.zip $env:APPDATA/Factorio/mods
Set-Location .\factorio_mod