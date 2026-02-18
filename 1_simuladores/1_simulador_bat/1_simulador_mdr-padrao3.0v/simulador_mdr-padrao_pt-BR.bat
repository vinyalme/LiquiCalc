@echo off
setlocal EnableDelayedExpansion
title LiquiCalc MDR Padrao - Simulador
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

set /p bruto=Digite o valor da venda (ex: 1500,00): 
set bruto=!bruto:,=.!

set /p mdr=Digite a taxa MDR (ex: 5,5 ou 5.5): 
set mdr=!mdr:,=.!

:: Calculo unico, seguro e independente de cultura
for /f "usebackq delims=" %%a in (`powershell -NoProfile -Command "$b=[double]::Parse('!bruto!',[cultureinfo]::InvariantCulture);$m=[double]::Parse('!mdr!',[cultureinfo]::InvariantCulture);$t=[math]::Round($b*$m/100,2);$l=[math]::Round($b-$t,2);Write-Output ($t.ToString([cultureinfo]::InvariantCulture)+'|'+$l.ToString([cultureinfo]::InvariantCulture))"`) do set resultado=%%a

if not defined resultado (
    echo.
    echo Erro no calculo. Verifique os valores digitados.
    pause
    goto menu
)

for /f "tokens=1,2 delims=|" %%b in ("!resultado!") do (
    set taxa=%%b
    set liquido=%%c
)

:: Formatar para exibicao brasileira
set bruto_exibicao=!bruto:.=,!
set taxa=!taxa:.=,!
set liquido=!liquido:.=,!

echo.
echo Resultado da Simulacao:
echo ------------------------
echo Valor Bruto:     R$ !bruto_exibicao!
echo Taxa MDR:        !mdr!%%
echo Taxa Cobrada:    R$ !taxa!
echo Valor Liquido:   R$ !liquido!
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
echo Formula:
echo Taxa Cobrada  = Valor Bruto * MDR / 100
echo Valor Liquido = Valor Bruto - Taxa Cobrada
echo.
pause
goto menu
