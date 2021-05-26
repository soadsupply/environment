#install choco
Write-Host "Installing/Updating Choco"
if ($null -eq (Get-Command -Name choco.exe -ErrorAction SilentlyContinue)) {
  Set-ExecutionPolicy Bypass -Scope Process -Force
  [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
  Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
else {
  & choco update Chocolatey
}

Write-Host  "Intstalling minimal setup"
& choco install `
  7zip `
  cascadia-code-nerd-font `
  chocolateygui `
  git `
  oh-my-posh `
  microsoft-windows-terminal `
  notepadplusplus `
  powertoys `
  pwsh `
  sysinternals `
  which `
  logitechgaming `
  qbittorrent `
  -y


Write-Host  "Install dev tools"
& choco install `
  urlrewrite `
  docker-desktop `
  eartrumpet `
  gh `
  insomnia-rest-api-client `
  postman `
  linqpad `
  nodejs-lts `
  sudo `
  vscode `
  github `
  visualstudio2019professional `
  jetbrains-rider `
  datagrip `
  mongodb-compass `
  -y
& choco install typescript --version 3.1.1


Write-Host  "Install office things"
& choco install `
  microsoft-edge-insider `
  adobereader `
  lightshot `
  spotify `
  telegram  `
  slack `
  discord `
  -y 
& choco install office365business -fy --params="/productid:O365ProPlusRetail" /exclude:"Access Groove Lync OneDrive Publisher Teams" /updates:"FALSE" /eula:"TRUE" 

if ((Read-Host "Install pc server apps: (y/N)").ToLower() -eq 'y') {
  & choco install `
    plex `
    -y
}