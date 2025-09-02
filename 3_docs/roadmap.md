# Roadmap do Projeto LiquiCalc

## 🗂️ Estrutura do Projeto – Detalhada

```

📦 LiquiCalc (V)  
├── 📁 0_conceitos/ (V)                              # Fundamentos técnicos e explicações de cálculo
│   ├── 📄 0_mdr-padrao.md (A)                       # Explicação da MDR padrão: conceito, fórmula e aplicação
│   ├── 📄 1_mdr-flex.md (A)                         # Explicação da MDR flexível (fator 1 e fator 2)
│   └── 📄 2_antecipacao.md (A)                      # Como funciona a antecipação de recebíveis e seu impacto nos valores
│
├── 📁 1_simulacoes/ (V)
│   ├── 📁 0_excel/ (V)
│   │   ├── 📄 README.md (P)
│   │   ├── 📁 0_LiquiCalc.1.3v/ (V)                 # Versão consolidada com todos os cálculos em um único arquivo
│   │   │   └── 📄 LiquiCalc.1.3.xlsx (P) 
│   │   ├── 📁 1_simulador_mdr-padrao1.0v/ (A)       # Simulador exclusivo para cálculo da MDR padrão
│   │   │   └── 📄 simulador_mdr-padrao.xlsx (P)
│   │   ├── 📁 2_simulador_mdr-flex1.1v/ (V)         # Simulador exclusivo para cálculo da MDR flexível
│   │   │   └── 📄 simulador_mdr-flex.xlsx (P)
│   │   └── 📁 3_simulador_antecipacao1.2v/ (V)      # Simulador para MDR padrão + antecipação de recebíveis
│   │       └── 📄 simulador_antecipacao.xlsx (P)
│   │ 
│   ├── 📁 1_simulador-bat/ (V)
│   │   ├── 📄 README.md (P)
│   │   ├── 📁 0_LiquiCalc.2.3v/ (V)                   # Versão consolidada com todos os cálculos em um único script
│   │   │   └── 📄 LiquiCalc.2.3.bat (P)
│   │   ├── 📁 1_simulador_mdr-padrao2.0v/ (V)         # Script exclusivo para cálculo da MDR padrão
│   │   │   └── 📄 simulador_mdr-padrao.bat (V)
│   │   ├── 📁 2_simulador_mdr-flex2.1v/ (V)           # Script exclusivo para cálculo da MDR flexível
│   │   │   └── 📄 simulador_mdr-flex.bat (A)
│   │   └── 📁 3_simulador_antecipacao2.2v/ (V)        # Script para MDR padrão + antecipação de recebíveis
│   │       └── 📄 simulador_antecipacao.bat (E)
│   │
│   └── 📁 2_simulador-web/ (V)                      # Simulações web interativas com HTML, CSS e JS
│       ├── 📄 README.md (P)
│       ├── 📁 0_LiquiCalc.3.3v/ (P)                   # Versão consolidada com todos os cálculos em uma única interface
│       │   ├── 📄 index.html (P)
│       │   ├── 📄 style.css (P)
│       │   └── 📄 script.js (P)
│       ├── 📁 1_simulador_mdr-padrao3.0v/ (P)         # Simulador exclusivo para cálculo da MDR padrão
│       │   ├── 📄 index.html (P)
│       │   ├── 📄 style.css (P)
│       │   └── 📄 script.js (P)
│       ├── 📁 2_simulador_mdr-flex3.1v/ (P)           # Simulador exclusivo para cálculo da MDR flexível
│       │   ├── 📄 index.html (P)
│       │   ├── 📄 style.css (P)
│       │   └── 📄 script.js (P)
│       └── 📁 3_simulador_antecipacao3.2v/ (P)        # Simulador para MDR padrão + antecipação de recebíveis
│           ├── 📄 index.html (P)
│           ├── 📄 style.css (P)
│           └── 📄 script.js (P)
│
├── 📁 2_testes/ (V)
│   ├── 📄 README.md (A)                                 # Visão geral dos testes: objetivo, escopo e regras de validação
│   ├── 📁 0_conceitos_teste/ (P)                        # Testes conceituais para validar a lógica dos cálculos do LiquiCalc
│   │   ├── 📄 0_teste_conceito_mdr-padrao.md (E)        # Teste conceitual da MDR padrão
│   │   ├── 📄 1_teste_conceito_mdr-flex.md (E)          # Teste conceitual da MDR flexível
│   │   └── 📄 2_teste_conceito_antecipacao.md (E)       # Teste conceitual da antecipação de recebíveis
│   │
│   ├── 📁 1_excel_teste/ (P)                            # Simuladores em Excel para testes manuais e validação visual
│   │   ├── 📁 0_LiquiCalc.1.3v/ (P)                  
│   │   │   └── 📄 teste_calculo_liquicalc_1.3.md (P)    # Teste de cálculo da versão consolidada 1.3
│   │   ├── 📁 1_simulador_mdr-padrao1.0v/ (P)          
│   │   │   └── 📄 teste_calculo_mdr-padrao_1.0.md (P)   # Teste de cálculo da MDR padrão versão 1.0
│   │   ├── 📁 2_simulador_mdr-flex1.1v/ (P)            
│   │   │   └── 📄 teste_calculo_mdr-flex_1.1.md (P)     # Teste de cálculo da MDR flexível versão 1.1
│   │   └── 📁 3_simulador_antecipacao1.2v/ (P)         
│   │       └── 📄 teste_calculo_antecipacao_1.2.md (P)  # Teste de cálculo da antecipação versão 1.2
│   │
│   ├── 📁 2_calculadora-bat_teste/ (P)                  # Scripts em BAT para execução automatizada dos cálculos via terminal
│   │   ├── 📁 0_LiquiCalc.2.3v/ (P)                      
│   │   │   └── 📄 teste_calculo_liquicalc_2.3.md (P)    # Teste de cálculo da versão consolidada 2.3
│   │   ├── 📁 1_simulador_mdr-padrao2.0v/ (P)            
│   │   │   └── 📄 teste_calculo_mdr-padrao_2.0.md (P)   # Teste de cálculo da MDR padrão versão 2.0
│   │   ├── 📁 2_simulador_mdr-flex2.1v/ (P)             
│   │   │   └── 📄 teste_calculo_mdr-flex_2.1.md (P)     # Teste de cálculo da MDR flexível versão 2.1
│   │   └── 📁 3_simulador_antecipacao2.2v/ (P)           
│   │       └── 📄 teste_calculo_antecipacao_2.2.md (P)  # Teste de cálculo da antecipação versão 2.2
│   │
│   └── 📁 3_calculadora-web_teste/ (P)                  # Interfaces web interativas para simulação dos cálculos via navegador
│       ├── 📁 0_LiquiCalc.3.3v/ (P)                      
│       │   └── 📄 teste_calculo_liquicalc_3.3.md (P)    # Teste de cálculo da versão consolidada 3.3
│       ├── 📁 1_simulador_mdr-padrao3.0v/ (P)            
│       │   └── 📄 teste_calculo_mdr-padrao_3.0.md (P)   # Teste de cálculo da MDR padrão versão 3.0
│       ├── 📁 2_simulador_mdr-flex3.1v/ (P)              
│       │   └── 📄 teste_calculo_mdr-flex_3.1.md (P)     # Teste de cálculo da MDR flexível versão 3.1
│       └── 📁 3_simulador_antecipacao3.2v/ (P)           
│           └── 📄 teste_calculo_antecipacao_3.2.md (P)  # Teste de cálculo da antecipação versão 3.2
│
├── 📁 3_docs/ (V)
│   └── 📄 roadmap.md (A)                            # Etapas planejadas, progresso e próximos passos do LiquiCalc
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

### **Cronograma de Releases — LiquiCalc (com tópicos, descrições e releases)**

| Release         | Tópico                          | Descrição                                                                                                                                              | Versão           | Prazo Estimado | Status Atual |
|----------------|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|------------------|----------------|--------------|
| **Rel.1**       | Conceito e modelagem técnica     | Conceito e Modelagem de Cálculo das Modalidades de Recebimento: estudo técnico dos fundamentos e fórmulas aplicáveis                                 | 1.0.0            | 1 semana       | Concluído |
| **Rel.1.1**     | Testes iniciais                  | Testes Iniciais de Validação dos Cálculos: simulações com exemplos reais para verificar a precisão matemática                                         | 1.0.1            | 1 dia         | Em andamento |
| **Rel.2**       | Protótipos em Excel              | Implementação dos Protótipos em Excel: tradução dos cálculos em planilhas individuais e versão consolidada                                            | 1.1.0 a 1.3.0    | 2 semanas      | Pendente     |
| **Rel.2.1**     | Validação dos protótipos         | Testes Controlados Excel: validação dos resultados com dados reais e cálculos esperados                                                                | 1.3.1            | 1 dia          | Pendente     |
| **Rel.3**       | Scripts executáveis              | Conversão para Scripts BAT – Primeira Interface Executável: desenvolvimento de scripts `.bat` para simular cada modalidade de forma interativa       | 2.0.0 a 2.3.0    | 1 semana       | Pendente     |
| **Rel.3.1**     | Testes dos scripts               | Testes Controlados BAT: verificação da lógica dos menus e consistência em relação ao Excel                                                             | 2.3.1            | 1 dia          | Pendente     |
| **Rel.4**       | Interface Web interativa         | Protótipo Web: construção da interface web em HTML/CSS/JS com cálculo dinâmico e simulações interativas                                               | 3.0.0 a 3.3.0    | 2 semanas      | Pendente     |
| **Rel.4.1**     | Testes da interface Web          | Testes Controlados Web: validação do comportamento da interface com os mesmos exemplos usados nas versões anteriores                                   | 3.3.1            | 1 dia          | Pendente     |
| **Rel.5**       | Testes integrados                | Testes Integrados e Regressivos: validação cruzada entre Excel, BAT e Web com cenários completos e de carga                                           | 3.3.2            | 1 semana       | Pendente     |
| **Rel.6**       | Documentação de uso              | Documentação de Usuário: criação de guias rápidos com instruções de uso, exemplos e resolução de erros comuns                                         | 3.3.2            | 1 semana       | Pendente     |
| **Rel.7**       | Empacotamento e publicação       | Empacotamento e Distribuição: geração dos pacotes finais (ZIP, instaladores) e publicação via GitHub Pages                                            | 3.3.2            | 1 semana       | Pendente     |
| **Rel.8**       | Coleta de feedback               | Coleta de Feedback (Beta): compartilhamento dos protótipos com usuários reais e coleta de sugestões e erros                                           | 3.3.2            | 2 semanas      | Pendente     |
| **Rel.9**       | Release oficial                  | Versão 3.4.0 – Release Oficial da Interface Web Consolidada: refinamento da UX/UI, correções finais e lançamento público estável                      | 3.4.0            | 1 semana       | Pendente     |
| **Rel.10**      | Evoluções futuras                | Evolução e Funcionalidades: planejamento e desenvolvimento de melhorias como PWA, suporte a idiomas, multi-moeda e dashboards                        | 4.0.0 (previsto) | Contínuo       | Pendente     |


Modelos que foi inpirado o liquicalc 
- https://github.com/Paulo-Gomes0681/simulador-cielo?tab=readme-ov-file 
- https://github.com/MASUKEMDAL/simulador.de.pos 
- https://github.com/mcpfbahia/Calculadora-de-Taxas 
- https://github.com/MaiconWesley/Simulador-de-Taxas
