@echo off
setlocal EnableExtensions EnableDelayedExpansion
title LiquiCalc Antecipacao - Simulador
color 0A

:menu
cls
echo ==================================================
echo           LiquiCalc Antecipacao - Simulador
echo ==================================================
echo.
echo [1] Simular Antecipacao
echo [2] Sobre a Antecipacao
echo [3] Sair
echo.
set /p opcao=Escolha uma opcao: 

if "%opcao%"=="1" goto simular
if "%opcao%"=="2" goto sobre
if "%opcao%"=="3" (
    echo Saindo do simulador...
    pause
    exit
)
goto menu

:simular
cls
echo --------------------------------------------------
echo         Simulador de Antecipacao de Recebiveis
echo --------------------------------------------------
echo.

:: Entrada do valor bruto
set "bruto="
set /p bruto=Digite o valor da venda (ex: 1000,00): 
set "bruto=%bruto:,=.%"

:: Entrada da taxa MDR
set "mdr="
set /p mdr=Digite a taxa MDR (ex: 1.50): 
set "mdr=%mdr:,=.%"

:: Entrada do numero de parcelas
set "parcelas="
set /p parcelas=Digite o numero de parcelas (ex: 3): 
for /f "delims=" %%a in ('powershell -command "$p=%parcelas%; try{$p=[int]$p}catch{$p=1}; if($p -lt 1){$p=1}; $p"') do set "parcelas=%%a"

:: Entrada da taxa de antecipacao
set "taxaAnt="
set /p taxaAnt=Digite a taxa de antecipacao (ex: 1.80): 
set "taxaAnt=%taxaAnt:,=.%"

:: Calculo da taxa MDR
for /f "delims=" %%a in ('powershell -command "[math]::Round(%bruto% * %mdr% / 100, 2)"') do set "taxaMDR=%%a"

:: Calculo do liquido parcial
for /f "delims=" %%a in ('powershell -command "[math]::Round(%bruto% - %taxaMDR%, 2)"') do set "liquidoParcial=%%a"

:: Calculo do valor por parcela
for /f "delims=" %%a in ('powershell -command "[math]::Round(%liquidoParcial% / %parcelas%, 2)"') do set "valorParcela=%%a"

:: Inicializa variaveis
set "totalAnt=0"
set "valorFinal=0"

echo.
echo Resultado da Simulacao:
echo ------------------------
echo Valor Bruto:             R$%bruto%
echo Taxa MDR:                %mdr%%%
echo Taxa MDR Cobrada:        R$%taxaMDR%
echo Valor Liquido Parcial:   R$%liquidoParcial%
echo Parcelas:                %parcelas%x
echo Valor Medio por Parcela: R$%valorParcela%
echo Taxa de Antecipacao:     %taxaAnt%%%
echo.

echo Detalhamento por Parcela:
echo --------------------------
echo Num : Taxa Aplicada : Valor Cobrado : Valor Liquido
echo ----:----------------:----------------:----------------

for /l %%i in (1,1,%parcelas%) do (
    set /a fator=%%i
    for /f "delims=" %%a in ('powershell -command "[math]::Round(%taxaAnt% * %%i / 100, 4)"') do set "taxaParcela=%%a"
    for /f "delims=" %%a in ('powershell -command "[math]::Round(%valorParcela% * !taxaParcela!, 2)"') do set "valorCobrado=%%a"
    for /f "delims=" %%a in ('powershell -command "[math]::Round(%valorParcela% - !valorCobrado!, 2)"') do set "valorLiquido=%%a"
    for /f "delims=" %%a in ('powershell -command "[math]::Round(!totalAnt! + !valorCobrado!, 2)"') do set "totalAnt=%%a"
    for /f "delims=" %%a in ('powershell -command "[math]::Round(!valorFinal! + !valorLiquido!, 2)"') do set "valorFinal=%%a"
    echo %%i   : !taxaParcela!       : R$!valorCobrado!     : R$!valorLiquido!
)

echo.
echo Total Antecipacao Cobrada: R$%totalAnt%
echo Valor Liquido Recebido:    R$%valorFinal%
echo.
pause
goto menu

:sobre
cls
echo --------------------------------------------------
echo                 Sobre a Antecipacao
echo --------------------------------------------------
echo.
echo Antecipacao e o processo de recebimento antecipado
echo de valores que seriam liquidados no futuro.
echo.
echo Ela e aplicada sobre o valor liquido (apos MDR) e
echo proporcional ao numero de parcelas.
echo.
echo Formula:
echo Valor Liquido = Valor Bruto - MDR - Taxa de Antecipacao
echo Taxa Antecipacao = Soma proporcional por parcela
echo.
echo Exemplo:
echo Venda de R$1000,00 em 3x com MDR de 1.5%% e
echo antecipacao de 1.8%% resulta em liquido de R$949,54.
echo.
pause
goto menu
