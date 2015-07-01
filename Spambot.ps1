function sendkey{

$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('title of the application window')
$wshell.SendKeys($Spam)
$wshell.SendKeys('~')

}

"Welcome to Vinny's Spammer"
'Please type the words or phrase you want to be spammed'

$Spam = Read-host
    'Now Select the number of times to spam this'
        $Multiplier = Read-Host
    'finally, how many seconds do you want to delay each message (.5 recommend, 0 Causes issues)'
        $delay = Read-Host
'spamming will commence in 5 seconds'
sleep 2
$i = 0
while ($i -le $Multiplier)
{
    sleep $delay
    sendkey
    $i = $i + 1
}