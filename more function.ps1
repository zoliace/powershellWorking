#Modularization
#Fundamental chaper 16

#***************************************

Function SayHello {
Write-Host "Hello" }

Sayhello

#**************************************

Function Osszead ([int]$arg1 =1) {
    $eredmeny = $arg1 + $arg1
    Write-Host $eredmeny
    }

Osszead

#**************************************


Function OParam {
    Param(
        [int]$arg1 =1,
        [int]$arg2 =2
        )
    $eredmeny = $arg1 + $arg2
    Write-Host $eredmeny
    }

Oparam

#*************************************************

Function Ping-Host1{
    Param(
        [String]$address = "localhost"
        )
        $wmi = Get-WmiObject -Query "SELECT StatusCode FROM Win32_PingStatus WHERE Address = '$address'"
        if ($wmi.statuscode -eq 0) {
            Write-Host "Pingable" } #if
        else {
            Write-Host "Not Pingable" } #else        
        $wmi
} #ping-host

Ping-Host1 localhost



Function Ping-Host2{
    Param(
        [String]$address = "localhost"
        )
        $wmi = Get-WmiObject -Query "SELECT StatusCode FROM Win32_PingStatus WHERE Address = '$address'"
        if ($wmi.statuscode -eq 0) {
            Write-Output "Pingable" } #if
        else {
            Write-Output "Not Pingable" } #else        
        $wmi
} #ping-host


$eredmeny = Ping-Host2 localhost
$eredmeny

#****************************************************************
function OSSzam {
    param ($computer)
    $wmi = gwmi win32_operatingsystem -ComputerName $computer
    foreach ($os in $wmi) {
        write $os.buildnumber }
}

OSSzam localhost

#***********************************************************












