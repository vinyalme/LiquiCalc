# 🗂️ Visão Estrutural do Projeto LiquiCalc

> Roadmap do Projeto LiquiCalc

Este documento apresenta o organograma técnico do projeto LiquiCalc, detalhando a disposição das pastas, arquivos e seus respectivos estados de maturidade. A estrutura foi pensada para refletir a lógica modular do projeto, facilitando a navegação, manutenção e evolução contínua. Cada item está classificado conforme seu nível de validação, permitindo identificar rapidamente o que está pronto, o que precisa de revisão e o que ainda está em desenvolvimento.

---

## 🗂️ Estrutura do Projeto – Detalhada

```

📦 LiquiCalc (V)  
├── 📁 0_conceitos/ (V)                              # Fundamentos técnicos e explicações de cálculo
│   ├── 📄 README.md (V)
│   ├── 📄 0_mdr-padrao.md (A)                       # Explicação da MDR padrão: conceito, fórmula e aplicação
│   ├── 📄 1_mdr-flex.md (A)                         # Explicação da MDR flexível (fator 1 e fator 2)
│   └── 📄 2_antecipacao.md (A)                      # Como funciona a antecipação de recebíveis e seu impacto nos valores
│
├── 📁 1_simulacoes/ (V)
│   ├── 📁 0_excel/ (V)
│   │   ├── 📄 README.md (V)
│   │   ├── 📁 0_LiquiCalc.2.3v/ (V)                 # Versão consolidada com todos os cálculos em um único arquivo
│   │   │   └── 📄 LiquiCalc.2.3.xlsx (P) 
│   │   ├── 📁 1_simulador_mdr-padrao2.0v/ (A)       # Simulador exclusivo para cálculo da MDR padrão
│   │   │   └── 📄 simulador_mdr-padrao.xlsx (P)
│   │   ├── 📁 2_simulador_mdr-flex2.1v/ (V)         # Simulador exclusivo para cálculo da MDR flexível
│   │   │   └── 📄 simulador_mdr-flex.xlsx (P)
│   │   └── 📁 3_simulador_antecipacao2.2v/ (V)      # Simulador para MDR padrão + antecipação de recebíveis
│   │       └── 📄 simulador_antecipacao.xlsx (P)
│   │ 
│   ├── 📁 1_simulador-bat/ (V)
│   │   ├── 📄 README.md (V)
│   │   ├── 📁 0_LiquiCalc.3.3v/ (V)                   # Versão consolidada com todos os cálculos em um único script
│   │   │   └── 📄 LiquiCalc.3.3.bat (E)
│   │   ├── 📁 1_simulador_mdr-padrao3.0v/ (V)         # Script exclusivo para cálculo da MDR padrão
│   │   │   └── 📄 simulador_mdr-padrao.bat (V)
│   │   ├── 📁 2_simulador_mdr-flex3.1v/ (V)           # Script exclusivo para cálculo da MDR flexível
│   │   │   └── 📄 simulador_mdr-flex.bat (A)
│   │   └── 📁 3_simulador_antecipacao3.2v/ (V)        # Script para MDR padrão + antecipação de recebíveis
│   │       └── 📄 simulador_antecipacao.bat (E)
│   │
│   └── 📁 2_simulador-web/ (V)                      # Simulações web interativas com HTML, CSS e JS
│       ├── 📄 README.md (R)
│       ├── 📁 0_LiquiCalc.4.3v/ (V)                   # Versão consolidada com todos os cálculos em uma única interface
│       │   ├── 📄 index.html (E)
│       │   ├── 📄 style.css (P)
│       │   └── 📄 script.js (P)
│       ├── 📁 1_simulador_mdr-padrao4.0v/ (V)         # Simulador exclusivo para cálculo da MDR padrão
│       │   ├── 📄 index.html (E)
│       │   ├── 📄 style.css (P)
│       │   └── 📄 script.js (P)
│       ├── 📁 2_simulador_mdr-flex4.1v/ (V)           # Simulador exclusivo para cálculo da MDR flexível
│       │   ├── 📄 index.html (E)
│       │   ├── 📄 style.css (P)
│       │   └── 📄 script.js (P)
│       └── 📁 3_simulador_antecipacao4.2v/ (V)        # Simulador para MDR padrão + antecipação de recebíveis
│           ├── 📄 index.html (E)
│           ├── 📄 style.css (P)
│           └── 📄 script.js (P)
│
├── 📁 2_testes/ (V)
│   ├── 📄 README.md (A)                                 # Visão geral dos testes: objetivo, escopo e regras de validação
│   ├── 📁 0_conceitos_teste/ (P)                        # Testes conceituais para validar a lógica dos cálculos do LiquiCalc
│   │   ├── 📄 0_teste_conceito_mdr-padrao.md (V)        # Teste conceitual da MDR padrão
│   │   ├── 📄 1_teste_conceito_mdr-flex.md (E)          # Teste conceitual da MDR flexível
│   │   └── 📄 2_teste_conceito_antecipacao.md (E)       # Teste conceitual da antecipação de recebíveis
│   │
│   ├── 📁 1_excel_teste/ (P)                            # Simuladores em Excel para testes manuais e validação visual
│   │   ├── 📁 0_LiquiCalc.2.3v/ (P)                  
│   │   │   └── 📄 teste_calculo_liquicalc_2.3.md (P)    # Teste de cálculo da versão consolidada 1.3
│   │   ├── 📁 1_simulador_mdr-padrao2.0v/ (P)          
│   │   │   └── 📄 teste_calculo_mdr-padrao_2.0.md (P)   # Teste de cálculo da MDR padrão versão 1.0
│   │   ├── 📁 2_simulador_mdr-flex2.1v/ (P)            
│   │   │   └── 📄 teste_calculo_mdr-flex_2.1.md (P)     # Teste de cálculo da MDR flexível versão 1.1
│   │   └── 📁 3_simulador_antecipacao2.2v/ (P)         
│   │       └── 📄 teste_calculo_antecipacao_2.2.md (P)  # Teste de cálculo da antecipação versão 1.2
│   │
│   ├── 📁 2_calculadora-bat_teste/ (P)                  # Scripts em BAT para execução automatizada dos cálculos via terminal
│   │   ├── 📁 0_LiquiCalc.3.3v/ (P)                      
│   │   │   └── 📄 teste_calculo_liquicalc_3.3.md (P)    # Teste de cálculo da versão consolidada 2.3
│   │   ├── 📁 1_simulador_mdr-padrao3.0v/ (P)            
│   │   │   └── 📄 teste_calculo_mdr-padrao_3.0.md (P)   # Teste de cálculo da MDR padrão versão 2.0
│   │   ├── 📁 2_simulador_mdr-flex3.1v/ (P)             
│   │   │   └── 📄 teste_calculo_mdr-flex_3.1.md (P)     # Teste de cálculo da MDR flexível versão 2.1
│   │   └── 📁 3_simulador_antecipacao3.2v/ (P)           
│   │       └── 📄 teste_calculo_antecipacao_3.2.md (P)  # Teste de cálculo da antecipação versão 2.2
│   │
│   └── 📁 3_calculadora-web_teste/ (P)                  # Interfaces web interativas para simulação dos cálculos via navegador
│       ├── 📁 0_LiquiCalc.4.3v/ (P)                      
│       │   └── 📄 teste_calculo_liquicalc_4.3.md (P)    # Teste de cálculo da versão consolidada 3.3
│       ├── 📁 1_simulador_mdr-padrao4.0v/ (P)            
│       │   └── 📄 teste_calculo_mdr-padrao_4.0.md (P)   # Teste de cálculo da MDR padrão versão 3.0
│       ├── 📁 2_simulador_mdr-flex4.1v/ (P)              
│       │   └── 📄 teste_calculo_mdr-flex_4.1.md (P)     # Teste de cálculo da MDR flexível versão 3.1
│       └── 📁 3_simulador_antecipacao4.2v/ (P)           
│           └── 📄 teste_calculo_antecipacao_4.2.md (P)  # Teste de cálculo da antecipação versão 3.2
│
├── 📁 3_docs/ (V)
│   └── 📄 roadmap_estrutura.md (A)                  # Etapas planejadas, progresso e próximos passos do LiquiCalc
│
├── 📄 LICENSE (V)                                   # Licença de uso do projeto (MIT License)
└── 📄 README.md (V)                                 # Apresentação geral: objetivo, uso, tecnologias e estrutura

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

---

## 📎 Considerações Finais

O organograma do LiquiCalc demonstra um projeto bem segmentado, com foco em clareza, escalabilidade e rastreabilidade técnica. A classificação por estado de maturidade permite priorizar entregas, organizar revisões e acompanhar o progresso de forma objetiva. Este documento será atualizado conforme novas versões forem lançadas e novos componentes forem incorporados à base do projeto.

---

Modelos que foi inpirado o liquicalc 
- https://github.com/Paulo-Gomes0681/simulador-cielo?tab=readme-ov-file 
- https://github.com/MASUKEMDAL/simulador.de.pos 
- https://github.com/mcpfbahia/Calculadora-de-Taxas 
- https://github.com/MaiconWesley/Simulador-de-Taxas
