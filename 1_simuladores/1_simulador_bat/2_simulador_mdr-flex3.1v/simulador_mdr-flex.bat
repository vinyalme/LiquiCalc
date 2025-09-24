@echo off
setlocal EnableExtensions EnableDelayedExpansion
:: chcp 850 >nul  :: opcional, pode causar erro em alguns sistemas

title LiquiCalc MDR Flex - Simulador
color 0A

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
if "%opcao%"=="3" (
    echo Saindo do simulador...
    pause
    exit
)
goto menu

:simular
cls
echo --------------------------------------------------
echo         Simulador de Venda com MDR Flex
echo --------------------------------------------------
echo.

:: Entrada do valor bruto
:valorBruto
set "bruto="
set /p bruto=Digite o valor da venda (ex: 5000,00): 
set "bruto=%bruto:,=.%"
if not defined bruto (
    echo Valor invalido. Tente novamente.
    goto valorBruto
)

:: Entrada do numero de parcelas
:valorParcelas
set "parcelas="
set /p parcelas=Digite o numero de parcelas (ex: 6): 
for /f "usebackq delims=" %%a in (`powershell -NoProfile -Command "$n='%parcelas%'; try{$n=[int]$n}catch{$n=1}; if($n -lt 1){$n=1}; $n"`) do set "parcelas=%%a"
if not defined parcelas (
    echo Valor invalido. Tente novamente.
    goto valorParcelas
)

:: Entrada do fator base
:fatorBase
set "fatorBase="
set /p fatorBase=Digite o Fator Base em %%%% (ex: 2,18): 
set "fatorBase=%fatorBase:,=.%"
if not defined fatorBase (
    echo Valor invalido. Tente novamente.
    goto fatorBase
)

:: Entrada do fator da 1a parcela
:fatorPrimeira
set "fatorPrimeira="
set /p fatorPrimeira=Digite o Fator da 1a Parcela em %%%% (ex: 1,54): 
set "fatorPrimeira=%fatorPrimeira:,=.%"
if not defined fatorPrimeira (
    echo Valor invalido. Tente novamente.
    goto fatorPrimeira
)

:: Verifica se é parcelado
if "%parcelas%"=="1" (
    set "fatorAdicional=0"
    goto calcular
)

:: Entrada do fator adicional
:fatorAdicional
set "fatorAdicional="
set /p fatorAdicional=Digite o Fator Parcela Adicional em %%%% (ex: 1,99): 
set "fatorAdicional=%fatorAdicional:,=.%"
if not defined fatorAdicional (
    echo Valor invalido. Tente novamente.
    goto fatorAdicional
)

:calcular
:: Calculo do MDR Flex
if "%parcelas%"=="1" (
    for /f "usebackq delims=" %%a in (`
        powershell -NoProfile -Command "[math]::Round(%fatorBase% + %fatorPrimeira%, 4)"
    `) do set "mdrFlex=%%a"
) else (
    for /f "usebackq delims=" %%a in (`
        powershell -NoProfile -Command "[math]::Round(%fatorBase% + %fatorPrimeira% + ((%parcelas% - 1) * %fatorAdicional%), 4)"
    `) do set "mdrFlex=%%a"
)

:: Calculo da taxa
for /f "usebackq delims=" %%a in (`
    powershell -NoProfile -Command "[math]::Round(%bruto% * %mdrFlex% / 100, 2)"
`) do set "taxa=%%a"

:: Calculo do valor liquido
for /f "usebackq delims=" %%a in (`
    powershell -NoProfile -Command "[math]::Round(%bruto% - %taxa%, 2)"
`) do set "liquido=%%a"

:: Verifica se houve erro
if not defined liquido (
    echo Houve um erro na simulacao. Verifique os valores digitados.
    pause
    goto menu
)

:: Resultado
echo.
echo Resultado da Simulacao:
echo ------------------------
echo Valor Bruto:             R$%bruto%
echo Parcelas:                %parcelas%x
echo Fator Base:              %fatorBase%%%
echo Fator 1a Parcela:        %fatorPrimeira%%%
if not "%parcelas%"=="1" echo Fator Parcela Adicional: %fatorAdicional%%%
echo MDR Flex Total:          %mdrFlex%%%
echo Taxa Cobrada:            R$%taxa%
echo Valor Liquido:           R$%liquido%
echo.
pause
goto menu

:sobre
cls
echo --------------------------------------------------
echo                 Sobre o MDR Flex
echo --------------------------------------------------
echo.
echo O MDR Flexivel e uma taxa de desconto aplicada em
echo vendas com cartao quando ha recebimento antecipado.
echo Ele varia conforme o parcelamento e e calculado por
echo soma de componentes.
echo.
echo Formula:
echo - Venda a vista: MDR_flex(%%) = Fator Base + Fator 1a Parcela
echo - Parcelado:     MDR_flex(%%) = Fator Base + Fator 1a Parcela + (Parcelas - 1) x Fator Parcela Adicional
echo Taxa Cobrada  = Valor Bruto x (MDR_flex / 100)
echo Valor Liquido = Valor Bruto - Taxa Cobrada
echo.
echo Definicoes:
echo - Fator Base: percentual por faixa de parcelamento
echo - 1a Parcela: valor fixo aplicado a toda venda
echo - Parcela Adicional: aplica-se da 2a em diante
echo.
pause
goto menu