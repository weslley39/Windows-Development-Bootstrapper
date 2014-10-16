# Allow local scripts to run unsigned
Set-ExecutionPolicy RemoteSigned

# ------------- Global Packages -------------

# Chocolatey
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# PSGet
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex

# NodeJS
choco install nodejs

# NPM Packages
npm install -g bower
npm install -g nodemon
npm install -g karma-cli
npm install -g http-server

# Git
choco install git
choco install git-credential-winstore

# Sublime Text 3
choco install SublimeText3
choco install SublimeText3.PackageControl

# Browsers
choco install Firefox
choco install GoogleChrome

# VM
choco install virtualbox
choco install vagrant 

# Extras
choco install ConEmu
choco install dropbox
choco install autohotkey

# ------------- PSGet Modules -------------

Install-Module go
Install-Module posh-git