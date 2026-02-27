@echo off
setlocal
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
if "%opcao%"=="3" exit
goto menu


:simular
cls
echo --------------------------------------------------
echo         Simulador de Antecipacao de Recebiveis
echo --------------------------------------------------
echo.

set /p bruto=Digite o valor da venda (ex: 1000,00): 
set bruto=%bruto:,=.%

set /p mdr=Digite a taxa MDR (ex: 1.50): 
set mdr=%mdr:,=.%

set /p parcelas=Digite o numero de parcelas: 

set /p taxaAnt=Digite a taxa de antecipacao (ex: 1.80): 
set taxaAnt=%taxaAnt:,=.%

cls

powershell -NoProfile -Command ^
"$br=%bruto%; ^
 $mdr=%mdr%; ^
 $parc=%parcelas%; ^
 $ant=%taxaAnt%; ^
 $taxaMDR=[math]::Round($br*$mdr/100,2); ^
 $liqParc=[math]::Round($br-$taxaMDR,2); ^
 $valParc=[math]::Round($liqParc/$parc,2); ^
 $totalAnt=0; ^
 $valorFinal=0; ^
 Write-Host ''; ^
 Write-Host 'Resultado da Simulacao:'; ^
 Write-Host '------------------------'; ^
 Write-Host ('Valor Bruto:             R$'+$br); ^
 Write-Host ('Taxa MDR:                '+$mdr+'%%'); ^
 Write-Host ('Taxa MDR Cobrada:        R$'+$taxaMDR); ^
 Write-Host ('Valor Liquido Parcial:   R$'+$liqParc); ^
 Write-Host ('Parcelas:                '+$parc+'x'); ^
 Write-Host ('Valor Medio por Parcela: R$'+$valParc); ^
 Write-Host ('Taxa de Antecipacao:     '+$ant+'%%'); ^
 Write-Host ''; ^
 Write-Host 'Detalhamento por Parcela:'; ^
 Write-Host '--------------------------'; ^
 Write-Host 'Num : Taxa Aplicada : Valor Cobrado : Valor Liquido'; ^
 Write-Host '----:----------------:----------------:----------------'; ^
 for($i=1;$i -le $parc;$i++){ ^
   $taxa=[math]::Round($ant*$i/100,4); ^
   $cobrado=[math]::Round($valParc*$taxa,2); ^
   $liq=[math]::Round($valParc-$cobrado,2); ^
   $totalAnt+=$cobrado; ^
   $valorFinal+=$liq; ^
   Write-Host ($i.ToString().PadRight(4)+' : '+$taxa.ToString().PadRight(14)+' : R$'+$cobrado.ToString().PadRight(12)+' : R$'+$liq); ^
 }; ^
 Write-Host ''; ^
 Write-Host ('Total Antecipacao Cobrada: R$'+[math]::Round($totalAnt,2)); ^
 Write-Host ('Valor Liquido Recebido:    R$'+[math]::Round($valorFinal,2));"

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
