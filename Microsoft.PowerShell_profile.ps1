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


# This example emits a cursor change VT escape in response to a Vi mode change.

# function OnViModeChange {
#     if ($args[0] -eq 'Command') {
#         # Set the cursor to a blinking block.
#         Write-Host -NoNewLine "`e[1 q"
#     } else {
#         # Set the cursor to a blinking line.
#         Write-Host -NoNewLine "`e[5 q"
#     }
# }
# Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange


# Set-Alias lvim C:\Users\vikas\.local\bin\lvim.ps1
# Set-Alias cat bat
Set-Alias cls clear
Set-Alias touch New-Item
Set-Alias grep rg
Set-Alias :q Exit
Set-Alias :wq Exit

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
