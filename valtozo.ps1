$valtozo = 'Hello'
$valtozo | get-member

wh $valtozo
$valtozo.ToUpper()
wh $valtozo
$valtozo.ToLower()
wh $valtozo

$valtozo.Length
wh $valtozo

$valtozo = 5
wh $valtozo

$valtozo |gm

Get-Alias gm #get-member

# common types
# string
# int
#boolean
#regex
#single
#double
#array

[int]$valtozo2 = Read-Host "Enter a naumber"
wh $valtozo2

$valtozo2 | gm

$tomb = @(1,2,3,4,5,6,7,8,9)

wh $tomb

$tomb2 = @("egy","ketto" , "harom")

$tomb2

$tomb2[0]

$tomb2[0].ToUpper()

Get-Alias gwmi   #get-wmiobject

$wmi = gwmi win32_service
$wmi[1].Name

$wmi | ft name, status -AutoSize

$val = 'Hello'
$val | Get-Member

$val2 = "Hello"
$val2 | Get-Member

