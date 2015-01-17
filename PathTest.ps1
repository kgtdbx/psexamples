<#
This is an example of if statement testing directory path within a try/catch statement.
There are two chances for exit on error and one for success.  
If no path is entered, Catch block dispays error and exits
If path is entered, but tests false, if statement evaluates true and exits
If path is good, all is well and congratulations are in order.
#>


try {if((test-path (read-host -prompt "Enter path")) -eq $false){write-host "That Path doesn't exist.  We're not sorry because you failed.";exit}} 
catch{ $_;write-host `n You failed beyond fail;  exit}
write-host "Fantastic, that path exists.  You must know what you are doing."