Import-Module ActiveDirectory

#Get CSV filepath
$filepath = Read-Host -Prompt "Please enter the filepath of the CSV file containing computers you wish to import."

#Import CSV into variable
$comps = Import-Csv $filepath

#Loop through each row to grab info and send it onto AD. 
#This will need to be ammended if we plan on sending more info than Host name and OU path.
#This script is a work in progress.

ForEach ($comp in $comps) {
    
    #Assign Data to variables

    $name = $comp.Name
    
    $path = $comp.OUPath

    #Send to AD

    New-ADComputer -Name "$name" -Path $path -Enabled $true 

    #Echo each Creation
    
    echo "Computer $name added to $path"

}

Read-Host -prompt "Press ENTER to exit"