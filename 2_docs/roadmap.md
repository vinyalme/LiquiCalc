## 🗂️ Estrutura do Projeto – Detalhada

📦 LiquiCalc (V)  
├── 📁 0_conceitos/ (V)                              # Fundamentos técnicos e explicações de cálculo
│   ├── 📄 0_mdr-padrao.md (E)                       # Explicação da MDR padrão: conceito, fórmula e aplicação
│   ├── 📄 1_mdr-flex.md (E)                         # Explicação da MDR flexível (fator 1 e fator 2)
│   └── 📄 2_antecipacao.md (E)                      # Como funciona a antecipação de recebíveis e seu impacto nos valores
│
├── 📁 1_simulacoes/ (V)
│   ├── 📁 0_excel/ (E)
│   │   └── 📁 simulador_excel/ (O)
│   │       ├── 📄 README.md **
│   │       ├── 📁 0_LiquiCalc.1.3v/ (A)               # Versão consolidada com todos os cálculos em um único arquivo
│   │       │   └── 📄 LiquiCalc.1.3.xlsx (P)
│   │       ├── 📁 1_simulador_mdr-padrao1.0v/ (A)     # Simulador exclusivo para cálculo da MDR padrão
│   │       │   └── 📄 simulador_mdr-padrao.xlsx (E)
│   │       ├── 📁 2_simulador_mdr-flex1.1v/ (A)       # Simulador exclusivo para cálculo da MDR flexível
│   │       │   └── 📄 simulador_mdr-flex.xlsx (E)
│   │       └── 📁 3_simulador_antecipacao1.2v/ (A)    # Simulador para MDR padrão + antecipação de recebíveis
│   │           └── 📄 simulador_antecipacao.xlsx (E)
│   │ 
│   ├── 📁 1_calculadora-bat/ (E)
│   │   ├── 📄 README.md **
│   │   ├── 📁 LiquiCalc.2.3v/ (P)                     # Versão consolidada com todos os cálculos em um único script
│   │   │   └── 📄 LiquiCalc.bat (P)
│   │   ├── 📁 simulador_mdr-padrao2.0v/ (P)           # Script exclusivo para cálculo da MDR padrão
│   │   │   └── 📄 simulador_mdr-padrao.bat (P)
│   │   ├── 📁 simulador_mdr-flex2.1v/ (P)             # Script exclusivo para cálculo da MDR flexível
│   │   │   └── 📄 simulador_mdr-flex.bat (P)
│   │   └── 📁 simulador_antecipacao2.2v/ (P)          # Script para MDR padrão + antecipação de recebíveis
│   │       └── 📄 simulador_antecipacao.bat (P)
│   │
│   └── 📁 2_calculadora-web/ (E)                      # Simulações web interativas com HTML, CSS e JS
│       ├── 📄 README.md **
│       ├── 📁 LiquiCalc.3.3v/ (P)                     # Versão consolidada com todos os cálculos em uma única interface
│       │   ├── 📄 index.html (P)
│       │   ├── 📄 style.css (P)
│       │   └── 📄 script.js (P)
│       ├── 📁 simulador_mdr-padrao3.0v/ (P)           # Simulador exclusivo para cálculo da MDR padrão
│       │   ├── 📄 index.html (P)
│       │   ├── 📄 style.css (P)
│       │   └── 📄 script.js (P)
│       ├── 📁 simulador_mdr-flex3.1v/ (P)             # Simulador exclusivo para cálculo da MDR flexível
│       │   ├── 📄 index.html (P)
│       │   ├── 📄 style.css (P)
│       │   └── 📄 script.js (P)
│       └── 📁 simulador_antecipacao3.2v/ (P)          # Simulador para MDR padrão + antecipação de recebíveis
│           ├── 📄 index.html (P)
│           ├── 📄 style.css (P)
│           └── 📄 script.js (P)
│
├── 📁 2_docs/ (V)
│   └── 📄 roadmap.md (A)                              # Etapas planejadas, progresso e próximos passos do LiquiCalc
│
├── 📄 LICENSE (V)                                     # Licença de uso do projeto (MIT License)
└── 📄 README.md (A)                                   # Apresentação geral: objetivo, uso, tecnologias e estrutura
```

## 📊 Classificações por Estado de Maturidade da Documentação

| Classificação     | Letra | Definição técnica                                                                 |
|-------------------|-------|------------------------------------------------------------------------------------|
| **Validado**      | `V`   | Documento revisado, testado e aprovado para uso técnico.                           |
| **Atualização**   | `A`   | Documento existente que precisa ser revisado ou expandido.                         |
| **Redigido**      | `R`   | Conteúdo escrito, mas ainda sem validação técnica ou revisão formal.               |
| **Estruturado**   | `E`   | Documento com estrutura definida, mas sem conteúdo completo.                       |
| **Planejado**     | `P`   | Documento previsto no escopo, ainda não iniciado.                                  |
| **Obsoleto**      | `O`   | Documento descontinuado ou substituído por versão mais atual.                      |
