```text

@echo off
title LiquiCalc MDR Padrão - Simulador
color 0A
setlocal enabledelayedexpansion

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

:: Substitui vírgula por ponto
set bruto=%bruto:,=.%

:: Separa reais e centavos
for /f "tokens=1,2 delims=." %%a in ("%bruto%") do (
    set reais=%%a
    set centavos=%%b
)

:: Se centavos não existir, assume 00
if not defined centavos set centavos=00
if "!centavos!"=="0" set centavos=00
if "!centavos!"=="1" set centavos=10
if "!centavos!"=="2" set centavos=20
if "!centavos!"=="3" set centavos=30
if "!centavos!"=="4" set centavos=40
if "!centavos!"=="5" set centavos=50
if "!centavos!"=="6" set centavos=60
if "!centavos!"=="7" set centavos=70
if "!centavos!"=="8" set centavos=80
if "!centavos!"=="9" set centavos=90

:: Converte tudo para centavos
set /a brutoCentavos=!reais! * 100 + !centavos!

echo.
set /p mdrDecimal=Digite a taxa MDR (ex: 2.8): 
set mdrDecimal=%mdrDecimal:,=.%

:: Separa parte inteira e decimal da taxa
for /f "tokens=1,2 delims=." %%a in ("%mdrDecimal%") do (
    set parteInteira=%%a
    set parteDecimal=%%b
)

:: Ajusta parte decimal
if not defined parteDecimal set parteDecimal=00
if "!parteDecimal!"=="0" set parteDecimal=00
if "!parteDecimal!"=="1" set parteDecimal=10
if "!parteDecimal!"=="2" set parteDecimal=20
if "!parteDecimal!"=="3" set parteDecimal=30
if "!parteDecimal!"=="4" set parteDecimal=40
if "!parteDecimal!"=="5" set parteDecimal=50
if "!parteDecimal!"=="6" set parteDecimal=60
if "!parteDecimal!"=="7" set parteDecimal=70
if "!parteDecimal!"=="8" set parteDecimal=80
if "!parteDecimal!"=="9" set parteDecimal=90

:: Converte taxa para centavos
set /a mdr=!parteInteira! * 100 + !parteDecimal!

:: Cálculo da taxa cobrada
set /a taxaCobrada=(brutoCentavos * mdr) / 10000

:: Cálculo do valor líquido
set /a valorLiquido=brutoCentavos - taxaCobrada

:: Separar reais e centavos
set /a reaisLiquido=valorLiquido / 100
set /a centavosLiquido=valorLiquido %% 100

set /a reaisTaxa=taxaCobrada / 100
set /a centavosTaxa=taxaCobrada %% 100

echo.
echo Resultado da Simulacao:
echo ------------------------
echo Valor Bruto:     R$!reais!,!centavos!
echo Taxa MDR:        !parteInteira!.!parteDecimal!%%
echo Taxa Cobrada:    R$!reaisTaxa!,!centavosTaxa!
echo Valor Liquido:   R$!reaisLiquido!,!centavosLiquido!
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
goto 

```
