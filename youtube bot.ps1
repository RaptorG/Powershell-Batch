$Link = 'https://www.youtube.com/watch?v=e-ORhEE9VVg' #Blank Space By Taylor Swift
$loop = 0

While ($loop -eq 0)
{
   for($i=1
     $i -le 10 #change this 10 to the number of windows you want to open
     $i++)
     {
       &("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe") /incognito $Link
     }
    timeout 300 # this waits 5 minutes by default to let the video play
    
    Get-Process | Where Name –Like “chrome*” | Stop-Process 
    # ends the chrome process to do it all again!!!
    }