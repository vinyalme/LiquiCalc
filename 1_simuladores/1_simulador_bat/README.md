# Simuladores BAT – LiquiCalc

Área exclusiva para execução do **LiquiCalc** via **terminal do Windows (CMD/PowerShell)**.
Aqui estão as versões em **scripts `.bat`**, que permitem calcular rapidamente os valores líquidos aplicando **MDR padrão, MDR flexível e antecipação de recebíveis**.

## Estrutura da pasta

* **0\_LiquiCalc.2.3v/** → Versão consolidada com todos os cálculos em um único script.
* **1\_simulador\_mdr-padrao2.0v/** → Script exclusivo para MDR padrão.
* **2\_simulador\_mdr-flex2.1v/** → Script exclusivo para MDR flexível.
* **3\_simulador\_antecipacao2.2v/** → Script para MDR padrão + antecipação.

## Como executar no Windows

1. Abra o **Prompt de Comando (CMD)** ou o **PowerShell**.
2. Navegue até a pasta do script desejado:

   ```bat
   cd caminho\para\LiquiCalc\1_simulador-bat\0_LiquiCalc.2.3v
   ```
3. Execute o script:

   ```bat
   .\LiquiCalc.2.3.bat
   ```

⚠️ **Observação importante**: alguns scripts utilizam **comandos PowerShell**, portanto é necessário que sua máquina Windows tenha o **PowerShell habilitado** (já vem por padrão nas versões modernas do Windows).

## Como executar no macOS ou Linux

Os arquivos `.bat` são **nativos do Windows**. Para rodar no **macOS** ou **Linux**:

1. Instale o **PowerShell Core (pwsh)**:
   👉 [Download oficial do PowerShell](https://github.com/PowerShell/PowerShell)

2. Abra o terminal e navegue até a pasta do script:

   ```bash
   cd caminho/para/LiquiCalc/1_simulador-bat/0_LiquiCalc.2.3v
   ```

3. Execute o script pelo PowerShell:

   ```bash
   pwsh ./LiquiCalc.2.3.bat
   ```

⚠️ No macOS/Linux é **obrigatório** usar o `pwsh` (PowerShell Core), já que o interpretador padrão não entende `.bat`.

## Alternativas multiplataforma

Se não quiser instalar PowerShell:

* Use a versão **Excel** → `1_simulacoes/0_excel/`
* Use a versão **Web** → `1_simulacoes/2_simulador-web/` (compatível com qualquer navegador).

## Observações finais

* Esses simuladores são úteis para **testes rápidos sem interface gráfica**.
* Para versões mais completas e interativas, utilize as outras camadas do projeto.
