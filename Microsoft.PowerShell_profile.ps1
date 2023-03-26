# Invoke-Expression (C:\ProgramData\chocolatey\bin\starship.exe init powershell)

$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
Import-Module Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Key "Ctrl+f" -Function ForwardWord
# Set-PSReadLineKeyHandler -Key Tab -Function Complete
# Set-PSReadLineOption -EditMode Vi

# Set-Alias lvim C:\Users\vikas\.local\bin\lvim.ps1
Set-Alias cat bat
Set-Alias cls clear
Set-Alias touch New-Item

function Invoke-Starship-PreCommand
{
  $USR  = $env:USERNAME.ToLower()
  $COM  = $env:COMPUTERNAME.ToLower()
  $directory = $pwd -replace "C:\\Users\\[\w\d-]+","~"
  # $host.ui.Write("`e]0; $env:USERNAME@$env:computername `> $directory `a")
  $host.ui.Write("`e]0;$USR@$COM > $directory`a")
  # $host.ui.Write("$directory")
}

Invoke-Expression (&starship init powershell)
