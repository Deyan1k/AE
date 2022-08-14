New-Item -Path "C:\" -Name "New Folder" -ItemType "directory"
cd "C:\New Folder"
"red","blue","green" | %{New-Item -Name "$_" -ItemType "Directory"}
(1..9) | ForEach-Object {New-item "redFile0$_.txt"}
(10..50) | ForEach-Object {New-item "redFile$_.txt"}
(1..9) | ForEach-Object {New-item "blueFile0$_.txt"}
(10..50) | ForEach-Object {New-item "blueFile$_.txt"}
(1..9) | ForEach-Object {New-item "greenFile0$_.txt"}
(10..50) | ForEach-Object {New-item "greenFile$_.txt"}
Move-Item -Path .\redFile*.txt -Destination .\red
Move-Item -Path .\greenFile*.txt -Destination .\green
Move-Item -Path .\blueFile*.txt -Destination .\blue
Get-ChildItem -Path "C:\New Folder\red" -include *1.txt, *3.txt, *5.txt, *7.txt, *9.txt -Recurse | Remove-Item -Force
Get-ChildItem -Path "C:\New Folder\" -Recurse -Force -Filter "blue*" | Rename-Item -NewName { $_.Name -replace "blue","grey" }
Get-ChildItem -Path "C:\New Folder\green" -Include greenFile* -Recurse | Remove-Item -Include greenFile*


