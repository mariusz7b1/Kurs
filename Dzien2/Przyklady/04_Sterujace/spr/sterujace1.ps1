for(;;)
{
clear-host
$choice=Read-Host -Prompt "Co wybierasz ?"
Switch ($choice) {
    {$_ -lt 2 }  { Write-Host “Liczba $choice jest mniejsza od 2” }
    {$_ -lt 4 }  { Write-Host “Liczba $choice jest mniejsza od 4” }
    {$_ -lt 6 }  { Write-Host “Liczba $choice jest mniejsza od 6” }
    Default { Write-Host “INNA” }
}
$x=read-host -Prompt "x konczy zabawę"
if ($x -eq "x"){break}
}



$ip=Read-Host -Prompt "Podaj adres IP ?"
Switch -WildCard ($ip) {
“192.168*” { Write-Host “To jest adres prywatny w klasie C” }
“172.16*"  { Write-Host “To jest adres prywatny w klasie B” }
“172.17*"  { Write-Host “To jest adres prywatny w klasie B” }
“10*”      { Write-Host “To jest adres prywatny w klasie A” }
Default { Write-Host “To jest adres INNY” }
}
