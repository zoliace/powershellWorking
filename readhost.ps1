
$var = Read-Host -Prompt "Please Enter your name" | Write-Host -ForegroundColor Cyan

$var = Read-Host -Prompt "Please Enter your name" -AsSecureString | Write-Host -ForegroundColor Cyan


$marshal = [Runtime.InteropServices.Marshal]
$var2 = $marshal::PtrToStringAuto($marshal::SecureStringToBSTR($var))


for (;;) {

$IP = Read-Host -Prompt "Please enter a valid IP address"

if ([bool]($IP -as [ipaddress])) {Write-Host "Thank you" -f Green;break} else {Write-Host "Invalid IP. You entered $IP" -f Red}

}

$IP






































