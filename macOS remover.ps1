# macOS-Remover
# Removes .DS_STORE, _DS_Store files and __MACOSX folders.

Write-Host "macOS remover"
Write-Host "Removes .DS_STORE, _DS_Store files and __MACOSX folders. `n"
$Path = Read-Host "Path to folder"

$Pattern = "((\.|_)DS_STORE)|(__MACOSX)"

Get-ChildItem $Path -Recurse | Where{$_.Name -Match $Pattern} | Remove-Item -Force