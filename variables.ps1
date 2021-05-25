$Folyamat = Get-Process

$Folyamat | Where-Object {$_.CPU -gt 1000} # CPU Busy

$Folyamat | Sort-Object WorkingSet64 -Descending # memoria



$osszeg = 2 + 3
$osszeg
$osszeg | Get-Member

$szoveg = ' alma + mag'
$szoveg
$szoveg | Get-Member

$igazhamis = $true
$igazhamis
$igazhamis | Get-Member

$szam1 = 3
$szam2 = 5
$osszeg = $szam1 + $szam2
$osszeg
Write-Host('Szam 1 +Szam 2 = Osszeg' , $osszeg)

$sz1 = '2'
$sz2 = '4'
$szo1 = $sz1 + $sz2
$szo1
Write-Host('Osszefuz' ,  $sz1 , ' + ', $sz2 , ' = ' , $szo1)


[int]$szam3 = '2'
[int]$szam4 = '8'
$szo2 = $szam3 + $szam4
$szo2
Write-Host('Kiszamol' ,  $szam3 , ' + ', $szam4 , ' = ' , $szo2)
$szo2.ToString()

$literal = ' egy meg ketto: $(1+2)'
$literal
$escaped = " egy meg ketto: $(1+2)"
$escaped

Write-Host '$escaped'
Write-Host "$escaped"

$env:COMPUTERNAME
$env:HOMEPATH
$env:COMPUTERNAME






