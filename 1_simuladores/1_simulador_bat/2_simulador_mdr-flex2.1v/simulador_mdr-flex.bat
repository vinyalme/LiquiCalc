@echo off
title LiquiCalc MDR Flex - Simulador
color 0B

:menu
cls
echo ==================================================
echo           LiquiCalc MDR Flex - Simulador
echo ==================================================
echo.
echo [1] Simular Venda com MDR Flex
echo [2] Sobre o MDR Flex
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
echo         Simulador de Venda com MDR Flex
echo --------------------------------------------------
echo.
set /p bruto=Digite o valor da venda (ex: 1000,50): 
set bruto=%bruto:,=.%

set /p fator1=Digite o Fator 1 (taxa base em %% ex: 2.5): 
set fator1=%fator1:,=.%

set /p fator2=Digite o Fator 2 (multiplicador ex: 1.2): 
set fator2=%fator2:,=.%

:: Calcular MDR Flex
for /f "delims=" %%a in ('powershell -command "[math]::Round(%fator1% * %fator2%, 4)"') do set mdrFlex=%%a

:: Calcular taxa cobrada
for /f "delims=" %%a in ('powershell -command "[math]::Round(%bruto% * %mdrFlex% / 100, 2)"') do set taxa=%%a

:: Calcular valor líquido
for /f "delims=" %%a in ('powershell -command "[math]::Round(%bruto% - %taxa%, 2)"') do set liquido=%%a

echo.
echo Resultado da Simulacao:
echo ------------------------
echo Valor Bruto:     R$%bruto%
echo Fator 1:         %fator1%%%
echo Fator 2:         %fator2%
echo MDR Flex:        %mdrFlex%%%
echo Taxa Cobrada:    R$%taxa%
echo Valor Liquido:   R$%liquido%
echo.
pause
goto menu

:sobre
cls
echo --------------------------------------------------
echo                 Sobre o MDR Flex
echo --------------------------------------------------
echo.
echo O MDR Flex e uma taxa ajustavel conforme o prazo
echo de recebimento ou perfil de antecipacao.
echo.
echo Formula:
echo MDR Flex (%) = Fator 1 × Fator 2
echo Valor Liquido = Valor Bruto × (1 - MDR Flex)
echo Taxa Cobrada  = Valor Bruto × MDR Flex
echo.
echo Fator 1: Taxa base da adquirente
echo Fator 2: Multiplicador conforme prazo
echo.
pause
goto menu

//

@echo off
title LiquiCalc MDR Flex - Simulador
color 0B
setlocal enabledelayedexpansion

:menu
cls
echo ==================================================
echo           LiquiCalc MDR Flex - Simulador
echo ==================================================
echo.
echo [1] Simular Venda com MDR Flex
echo [2] Sobre o MDR Flex
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
echo         Simulador de Venda com MDR Flex
echo --------------------------------------------------
echo.
set /p bruto=Digite o valor da venda (ex: 100,50 ou 1000,99): 
set bruto=%bruto:,=.%

for /f "tokens=1,2 delims=." %%a in ("%bruto%") do (
    set reais=%%a
    set centavos=%%b
)
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

set /a brutoCentavos=!reais! * 100 + !centavos!

echo.
set /p fator1=Digite o Fator 1 (taxa base em % ex: 2.5): 
set fator1=%fator1:,=.%

for /f "tokens=1,2 delims=." %%a in ("%fator1%") do (
    set f1int=%%a
    set f1dec=%%b
)
if not defined f1dec set f1dec=00
if "!f1dec!"=="0" set f1dec=00
if "!f1dec!"=="1" set f1dec=10
if "!f1dec!"=="2" set f1dec=20
if "!f1dec!"=="3" set f1dec=30
if "!f1dec!"=="4" set f1dec=40
if "!f1dec!"=="5" set f1dec=50
if "!f1dec!"=="6" set f1dec=60
if "!f1dec!"=="7" set f1dec=70
if "!f1dec!"=="8" set f1dec=80
if "!f1dec!"=="9" set f1dec=90

set /a fator1Centavos=!f1int! * 100 + !f1dec!

echo.
set /p fator2=Digite o Fator 2 (multiplicador ex: 1.2): 
set fator2=%fator2:,=.%

:: Cálculo do MDR Flex em centavos
set /a mdrFlexCentavos=(fator1Centavos * 100 * fator2) / 100

:: Cálculo da taxa cobrada
set /a taxaCobrada=(brutoCentavos * mdrFlexCentavos) / 10000

:: Cálculo do valor líquido
set /a valorLiquido=brutoCentavos - taxaCobrada

:: Separar reais e centavos
set /a reaisLiquido=valorLiquido / 100
set /a centavosLiquido=valorLiquido %% 100

set /a reaisTaxa=taxaCobrada / 100
set /a centavosTaxa=taxaCobrada %% 100

:: Calcular MDR Flex final em percentual
set /a mdrFinalInt=mdrFlexCentavos / 100
set /a mdrFinalDec=mdrFlexCentavos %% 100

echo.
echo Resultado da Simulacao:
echo ------------------------
echo Valor Bruto:     R$!reais!,!centavos!
echo Fator 1:         !f1int!.!f1dec!%%
echo Fator 2:         !fator2!
echo MDR Flex:        !mdrFinalInt!.!mdrFinalDec!%%
echo Taxa Cobrada:    R$!reaisTaxa!,!centavosTaxa!
echo Valor Liquido:   R$!reaisLiquido!,!centavosLiquido!
echo.
pause
goto menu

:sobre
cls
echo --------------------------------------------------
echo                 Sobre o MDR Flex
echo --------------------------------------------------
echo.
echo O MDR Flex e uma taxa ajustavel conforme o prazo
echo de recebimento ou perfil de antecipacao.
echo.
echo Formula:
echo MDR Flex (%) = Fator 1 × Fator 2
echo Valor Liquido = Valor Bruto × (1 - MDR Flex)
echo Taxa Cobrada  = Valor Bruto × MDR Flex
echo.
echo Fator 1: Taxa base da adquirente
echo Fator 2: Multiplicador conforme prazo
echo.
pause
goto menu
