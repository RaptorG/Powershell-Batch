rem this script will stop the spooler, clear the queue, then restart the spooler

net stop spooler 
del /F /Q C:\Windows\System32\spool\PRINTERS*
net start spooler
