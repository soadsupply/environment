# Dotfiles and scripts I use on dev machines

## Setup

Install the tools
`iwr -useb https://raw.githubusercontent.com/soadsupply/environment/main/setup-choco.ps1 | iex`

## Configure Windows Terminal

1. Install oh-my-posh module
   `Install-Module oh-my-posh -Scope CurrentUser`
2. Open Windows Terminal settings and set `fontFace`:
   ```
   "profiles":
      {
         "defaults":
         {
               "fontFace" : "CaskaydiaCove Nerd Font"
         },
   ```
3. Open profile `notepad $profile`
4. Add following lines:
   ```
   Import-Module oh-my-posh
   Set-PoshPrompt -Theme jandedobbeleer
   ```
5. Execute `Set-ExecutionPolicy RemoteSigned`
6. Reload profile
   `. $profile`
