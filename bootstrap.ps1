# Allow local scripts to run unsigned
Set-ExecutionPolicy RemoteSigned

# ------------- Global Packages -------------

# Chocolatey
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# PSGet
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex

# ------------- Choco Packages -------------

# Packages Definition
$tools =  @("git", "autohotkey")
$browsers = @("Firefox", "GoogleChrome", "GoogleChrome.Canary")
$editors = @("Atom", "SublimeText3")
$programs = @("notepadplusplus")
$extras = @("SublimeText3.PackageControl")

# Install Packages
foreach ($tool in $tools) { choco install $tool }
foreach ($browser in $browsers) { choco install $browser }
foreach ($editor in $editors) { choco install $editor }
foreach ($program in $programs) { choco install $program }
foreach ($extra in $extras) { choco install $extra }
 
# ------------- PSGet Modules -------------

# Modules Definition
$psModules = @("go", "posh-git")

# Install Modules
foreach ($module in $psModules) { Install-Module $module }