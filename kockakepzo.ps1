#kockakepzo

$a =5
$a

New-Variable -Name b -Value 6
$b

$alma = 'korte'

Set-Variable -Name $alma -Value 'barack'

$alma

$korte

Write-Host 'alma $a'
$a

Write-Host "alma $a"
$a

${c:\a.txt} = 'AAAA'

${c:\a.txt} += 'BBBBAAAA'

Get-Content .\a.txt   #így mert nincs benne a keresési utvonalban

get-alias

#ez alias
dir  # ez csak így megy
Get-ChildItem

dir -Recurse   # ki listázza

# megynitja és létrehozza a fájlt.
notepad s1.ps1

# a powershell nem számít a kis nagy betű, de a .net vmi az

#script futtatás, csak akkor ha scirpt digitálisna alá van riva
Get-ExecutionPolicy

get-help Set-ExecutionPolicy -Full

#help frissites
update-help 

update-help -source

save-help -DestinationPath   #nem mindegy hogy windows 10 vagy server
save-help -Module activedirectory -DestinationPath 

Get-Help Set-ExecutionPolicy -ShowWindow  # kulon ablakban nyitja meg.

Get-PSProvider

 
<#

PS C:\WINDOWS\system32> Get-PSProvider

Name                 Capabilities                                                     Drives                                                         
----                 ------------                                                     ------                                                         
Registry             ShouldProcess, Transactions                                      {HKLM, HKCU}                                                   
Alias                ShouldProcess                                                    {Alias}                                                        
Environment          ShouldProcess                                                    {Env}                                                          
FileSystem           Filter, ShouldProcess, Credentials                               {C, G, H, J...}                                                
Function             ShouldProcess                                                    {Function}                                                     
Variable             ShouldProcess                                                    {Variable}                                                     
Certificate          ShouldProcess                                                    {Cert}                                                         
WSMan                Credentials                                                      {WSMan}     

#>


Get-ItemProperty -Path C:\test\1.txt

Get-ItemProperty -Path C:\test\1.txt |Select-Object mode, length

Get-ItemProperty -Path C:\test\1.txt | Where-Object length -GT 5

Get-Service | Get-Member  # objektumnak milyen tulajdonságai vannak

get-help Stop-Service -Full   # elfogad pipe-t ?

# byvalue tipus egyezés kell. szervizkontrollert vár el és ezt is kap ez az erosebb

# bypropertyname becsapos elkezd csinálni valamit

# szerviz és process name nem ugyanaz

get-help Stop-Process -Full  

get-adcomputer -

# a @{ az asszociativ tömb
# $_ vagy $PSItem aktuális név ! 

# Get-ADComputer  -Filter * | Select-Object @{name = 'computername'; expression={$_.name}} | get-service -name bits


Search-ADAccount -LockedOut -SearchBase 'OU=Elso,OU=DIO,DC=DIO,DC=PARTY' | Unlock-ADAccount

$lockUser = Search-ADAccount -LockedOut -SearchBase 'OU=Elso,OU=DIO,DC=DIO,DC=PARTY'
$lockUser


Get-ADComputer -Filter * | Select-Object name, nmae
Get-ADComputer -Filter * | Select-Object name, computername

Get-ADComputer -Filter * | Select-Object name, @{name = 'computername'; expression={$_.name}}

Get-ADComputer -Filter * | Select-Object @{name = 'computername'; expression={$_.name}}

Get-ADComputer  diodc1 | Select-Object @{name = 'computername'; expression={$_.name}} | get-service -name bits

Get-ADComputer  -Filter * | Select-Object @{name = 'computername'; expression={$_.name}} | get-service -name bits

get-service -Name bits -ComputerName (Get-ADComputer -filter *)


Get-ADComputer diodc1 | select name

Get-ADComputer diodc1 | select name | Get-Member

Get-ADComputer diodc1 | select -ExpandProperty name

Get-ADComputer diodc1 | select -ExpandProperty name | Get-Member

#get-service -Name bits -ComputerName (Get-ADComputer -filter *| select -ExpandProperty name )

get-service -Name bits -ComputerName (Get-ADComputer diodc1| select -ExpandProperty name )

Search-ADAccount -LockedOut -SearchBase 'OU=Elso,OU=DIO,DC=DIO,DC=PARTY' | Unlock-ADAccount

$lockUser = Search-ADAccount -LockedOut -SearchBase 'OU=Elso,OU=DIO,DC=DIO,DC=PARTY'
$lockUser


Get-ADComputer -Filter * | Select-Object name, nmae
Get-ADComputer -Filter * | Select-Object name, computername

Get-ADComputer -Filter * | Select-Object name, @{name = 'computername'; expression={$_.name}}

Get-ADComputer -Filter * | Select-Object @{name = 'computername'; expression={$_.name}}

Get-ADComputer  diodc1 | Select-Object @{name = 'computername'; expression={$_.name}} | get-service -name bits

Get-ADComputer  -Filter * | Select-Object @{name = 'computername'; expression={$_.name}} | get-service -name bits

get-service -Name bits -ComputerName (Get-ADComputer -filter *)


Get-ADComputer diodc1 | select name

Get-ADComputer diodc1 | select name | Get-Member

Get-ADComputer diodc1 | select -ExpandProperty name

Get-ADComputer diodc1 | select -ExpandProperty name | Get-Member

#get-service -Name bits -ComputerName (Get-ADComputer -filter *| select -ExpandProperty name )

get-service -Name bits -ComputerName (Get-ComputerInfo  ZolaPest | select -ExpandProperty name )


$env:COMPUTERNAME
Get-Host







