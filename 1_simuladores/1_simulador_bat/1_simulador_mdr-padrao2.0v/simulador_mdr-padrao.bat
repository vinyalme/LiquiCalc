@echo off
title LiquiCalc MDR Padrão - Simulador
color 0A

:menu
cls
echo ==================================================
echo           LiquiCalc MDR Padrao - Simulador
echo ==================================================
echo.
echo [1] Simular Venda com MDR
echo [2] Sobre o MDR
echo [3] Sair
echo.
set /p opcao=Escolha uma opcao: 

if "%opcao%"=="1" goto simular
if "%opcao%"=="2" goto sobre
if "%opcao%"=="3" exit
goto menu

:simular
cls
echo --------------------------------------------------
echo            Simulador de Venda com MDR
echo --------------------------------------------------
echo.
set /p bruto=Digite o valor da venda (ex: 100,50 ou 1000,99): 
set bruto=%bruto:,=.%

set /p mdr=Digite a taxa MDR (ex: 2.8): 
set mdr=%mdr:,=.%

:: Calcula com precisão usando PowerShell
for /f "delims=" %%a in ('powershell -command "[math]::Round(%bruto% * %mdr% / 100, 2)"') do set taxa=%%a
for /f "delims=" %%a in ('powershell -command "[math]::Round(%bruto% - %taxa%, 2)"') do set liquido=%%a

echo.
echo Resultado da Simulacao:
echo ------------------------
echo Valor Bruto:     R$%bruto%
echo Taxa MDR:        %mdr%%%
echo Taxa Cobrada:    R$%taxa%
echo Valor Liquido:   R$%liquido%
echo.
pause
goto menu

:sobre
cls
echo --------------------------------------------------
echo                   Sobre o MDR
echo --------------------------------------------------
echo.
echo MDR (Merchant Discount Rate) e a taxa cobrada
echo pelas adquirentes sobre cada transacao com cartao.
echo.
echo Ela remunera:
echo - A maquininha
echo - A bandeira do cartao
echo - O banco emissor
echo.
echo Formula:
echo Valor Liquido = Valor Bruto * (1 - MDR)
echo Taxa Cobrada  = Valor Bruto * MDR
echo.
pause
goto menu
