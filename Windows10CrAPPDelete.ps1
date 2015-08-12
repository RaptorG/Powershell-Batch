
"Hey there, I'm just going to go ahead and clean up some of the crapware installed with windows 10"
"Before you run this script be sure that you know what is being removed."
"If you want some of the apps in here that I am deleting for you, then remove those lines"
sleep 3

Get-AppxPackage -Name *3DBuilder* | Remove-AppxPackage
Get-AppxPackage -Name *BingFinance* | Remove-AppxPackage
Get-AppxPackage -Name *BingNews* | Remove-AppxPackage
Get-AppxPackage -Name *BingSports* | Remove-AppxPackage
Get-AppxPackage -Name *BingWeather* | Remove-AppxPackage
Get-AppxPackage -Name *ContactSupport* | Remove-AppxPackage
Get-AppxPackage -Name *Getstarted* | Remove-AppxPackage
Get-AppxPackage -Name *MicrosoftOfficeHub* | Remove-AppxPackage
Get-AppxPackage -Name *MicrosoftSolitaireCollect* | Remove-AppxPackage
Get-AppxPackage -Name *MicrosoftSolitaireCollection* | Remove-AppxPackage
Get-AppxPackage -Name *People* | Remove-AppxPackage
Get-AppxPackage -Name *SkypeApp* | Remove-AppxPackage
Get-AppxPackage -Name *WindowsAlarms* | Remove-AppxPackage
Get-AppxPackage -Name *WindowsCamera* | Remove-AppxPackage
Get-AppxPackage -Name *WindowsFeedback* | Remove-AppxPackage
Get-AppxPackage -Name *WindowsMaps* | Remove-AppxPackage
Get-AppxPackage -Name *WindowsPhone* | Remove-AppxPackage
Get-AppxPackage -Name *XboxApp* | Remove-AppxPackage
Get-AppxPackage -Name *XboxGameCallableUI* | Remove-AppxPackage 
Get-AppxPackage -Name *XboxIdentityProvider* | Remove-AppxPackage
"Removing Movies and TV app..... You're welcome"
Get-AppxPackage -Name *ZuneVideo* | Remove-AppxPackage    #Worst APP ever.

"All of the apps have been removed. That last app that was deleted really sucks though. I recommend VLC for Watching videos"
"Would you like me to install VLC for you? Y/N"
$Choice2 = Read-Host
if ($Choice2 -eq 'Y' -or $Choice2 -eq 'y' -or $Choice2 -eq 'yes')
{
    'Installing Chocolatey'
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

    'Installing VLC'
    choco install vlc -y
    }
