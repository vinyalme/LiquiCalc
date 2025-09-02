# Simuladores .BAT – LiquiCalc

Área exclusiva para execução do **LiquiCalc** via **terminal do Windows (CMD/PowerShell)**.
Aqui estão as versões em **scripts `.bat`**, que permitem calcular rapidamente os valores líquidos aplicando **MDR padrão, MDR flexível e antecipação de recebíveis**.

- 📂 Repositório oficial: [LiquiCalc no GitHub](https://github.com/vinyalme/LiquiCalc)
- 📂 Pasta específica: [Simuladores BAT](https://github.com/vinyalme/LiquiCalc/tree/main/1_simuladores/1_simulador_bat)

---

## 1. Clonando o repositório

Antes de rodar qualquer script, clone o projeto do GitHub:

```bash
git clone https://github.com/vinyalme/LiquiCalc.git
```

Depois entre na pasta do simulador BAT:

```bash
cd LiquiCalc/1_simuladores/1_simulador_bat/0_LiquiCalc.2.3v
```

---

## 2. Como executar no Windows

1. Abra o **CMD** ou o **PowerShell**.
2. Se você baixou/clonou na pasta **Downloads**, use:

   ```bat
   cd %HOMEPATH%\Downloads\LiquiCalc\1_simuladores\1_simulador_bat\0_LiquiCalc.2.3v
   ```

   ou, se estiver no seu **workspace** (exemplo em `C:\workspace`):

   ```bat
   cd C:\workspace\LiquiCalc\1_simuladores\1_simulador_bat\0_LiquiCalc.2.3v
   ```
3. Execute o script:

   ```bat
   .\LiquiCalc.2.3.bat
   ```

⚠️ **Importante**: alguns scripts utilizam **comandos PowerShell**, portanto é necessário que sua máquina Windows tenha o **PowerShell habilitado** (já vem por padrão nas versões modernas do Windows).

---

## 3. Como executar no macOS ou Linux

1. Instale o **PowerShell Core (pwsh)**:
   👉 [Download oficial do PowerShell](https://github.com/PowerShell/PowerShell)

2. Abra o terminal.

   * Se você clonou em **Downloads**:

     ```bash
     cd ~/Downloads/LiquiCalc/1_simuladores/1_simulador_bat/0_LiquiCalc.2.3v
     ```
   * Se você clonou em um **workspace** (exemplo: `~/workspace`):

     ```bash
     cd ~/workspace/LiquiCalc/1_simuladores/1_simulador_bat/0_LiquiCalc.2.3v
     ```

3. Execute o script pelo PowerShell:

   ```bash
   pwsh ./LiquiCalc.2.3.bat
   ```

⚠️ No macOS/Linux é **obrigatório** usar o `pwsh` (PowerShell Core), já que o interpretador padrão não entende `.bat`.

---

## 4. Alternativas multiplataforma

Se não quiser instalar PowerShell:

* Use a versão **Excel** → `1_simulacoes/0_excel/`
* Use a versão **Web** → `1_simulacoes/2_simulador-web/` (compatível com qualquer navegador).
