# 🖥️ Simuladores via Terminal (.BAT) – LiquiCalc

Área dedicada aos simuladores do LiquiCalc desenvolvidos em **scripts BAT**, ideais para execução rápida via terminal no Windows ou PowerShell Core em macOS/Linux. Cada script realiza cálculos específicos de **MDR padrão**, **MDR flexível** e **antecipação de recebíveis**, com uma versão consolidada que reúne todos os modelos.

📂 Repositório oficial: [LiquiCalc no GitHub](https://github.com/vinyalme/LiquiCalc)  
📂 Pasta específica: [Simuladores BAT](https://github.com/vinyalme/LiquiCalc/tree/main/1_simuladores/1_simulador_bat)

---

## 1. Clonando o repositório

Antes de executar os scripts, clone o projeto do GitHub:

```bash
git clone https://github.com/vinyalme/LiquiCalc.git
```

Depois acesse a pasta dos simuladores BAT:

```bash
cd LiquiCalc/1_simulacoes/1_simulador-bat/
```

---

## 2. Versões disponíveis

| Pasta | Descrição |
|-------|-----------|
| [`0_LiquiCalc.2.3v/`](https://github.com/vinyalme/LiquiCalc/tree/main/1_simuladores/1_simulador_bat/0_LiquiCalc.2.3v) | Versão consolidada com todos os cálculos em um único script |
| [`1_simulador_mdr-padrao2.0v/`](https://github.com/vinyalme/LiquiCalc/tree/main/1_simuladores/1_simulador_bat/1_simulador_mdr-padrao2.0v) | Simulador exclusivo para cálculo da MDR padrão |
| [`2_simulador_mdr-flex2.1v/`](https://github.com/vinyalme/LiquiCalc/tree/main/1_simuladores/1_simulador_bat/2_simulador_mdr-flex2.1v) | Simulador exclusivo para cálculo da MDR flexível |
| [`3_simulador_antecipacao2.2v/`](https://github.com/vinyalme/LiquiCalc/tree/main/1_simuladores/1_simulador_bat/3_simulador_antecipacao2.2v) | Simulador para MDR padrão + antecipação de recebíveis |

---

## 3. Requisitos mínimos

- ✅ Sistema operacional: Windows 10 ou superior, macOS, ou distribuições Linux modernas
- ✅ PowerShell instalado (vem por padrão no Windows moderno; necessário instalar no macOS/Linux)
- ✅ Terminal com permissão para executar scripts
- ⚠️ No macOS/Linux, é obrigatório o uso do PowerShell Core (`pwsh`) para interpretar arquivos `.bat`

---

## 4. Como executar no Windows

Abra o CMD ou o PowerShell.

Se você baixou/clonou na pasta Downloads, use:

```bash
cd %HOMEPATH%\Downloads\LiquiCalc\1_simuladores\1_simulador_bat\0_LiquiCalc.2.3v
```

ou, se estiver no seu workspace (exemplo em `C:\workspace`):

```bash
cd C:\workspace\LiquiCalc\1_simuladores\1_simulador_bat\0_LiquiCalc.2.3v
```

Execute o script:

```bash
.\LiquiCalc.2.3.bat
```

⚠️ Importante: alguns scripts utilizam comandos PowerShell, portanto é necessário que sua máquina Windows tenha o PowerShell habilitado (já vem por padrão nas versões modernas do Windows).

---

## 5. Como executar no macOS ou Linux

Instale o PowerShell Core (pwsh): 👉 [Download oficial do PowerShell](https://github.com/PowerShell/PowerShell)

Abra o terminal.

Se você clonou em Downloads:

```bash
cd ~/Downloads/LiquiCalc/1_simuladores/1_simulador_bat/0_LiquiCalc.2.3v
```

Se você clonou em um workspace (exemplo: `~/workspace`):

```bash
cd ~/workspace/LiquiCalc/1_simuladores/1_simulador_bat/0_LiquiCalc.2.3v
```

Execute o script pelo PowerShell:

```bash
pwsh ./LiquiCalc.2.3.bat
```

⚠️ No macOS/Linux é obrigatório usar o `pwsh` (PowerShell Core), já que o interpretador padrão não entende `.bat`.

---

## 6. Alternativas multiplataforma

Se preferir outras formas de simulação:

- Use os simuladores Web → [`1_simulacoes/2_simulador-web/`](https://github.com/vinyalme/LiquiCalc/tree/main/1_simuladores/2_simulador_web) (ideal para uso direto no navegador)
- Use os simuladores Excel → [`1_simulacoes/0_excel/`](https://github.com/vinyalme/LiquiCalc/tree/main/1_simuladores/0_excel) (ideal para testes manuais e análises offline)
