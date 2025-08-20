```text

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
set /p bruto=Digite o valor da venda (ex: 500): 
set /a brutoCentavos=%bruto% * 100

echo.
set /p mdr=Digite a taxa MDR em centavos (ex: 2.8%% = 280): 


:: Cálculo da taxa cobrada
set /a taxaCobrada=(%brutoCentavos% * %mdr%) / 10000

:: Cálculo do valor líquido
set /a valorLiquido=%brutoCentavos% - %taxaCobrada%

:: Separar reais e centavos
set /a reaisLiquido=%valorLiquido% / 100
set /a centavosLiquido=%valorLiquido% %% 100

set /a reaisTaxa=%taxaCobrada% / 100
set /a centavosTaxa=%taxaCobrada% %% 100

echo.
echo Resultado da Simulacao:
echo ------------------------
echo Valor Bruto:     R$%bruto%,00
echo Taxa MDR:        %mdr%%% 
echo Taxa Cobrada:    R$%reaisTaxa%,%centavosTaxa%
echo Valor Liquido:   R$%reaisLiquido%,%centavosLiquido%
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

```
