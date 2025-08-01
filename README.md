# 💳 LiquiCalc

**Simulador completo de taxas de adquirência** — MDR Padrão, MDR Flex e Antecipações — baseado em vendas no cartão.  
Este projeto é a base para o futuro **app LiquiCalc**, uma calculadora simples e eficiente para vendedores e lojistas descobrirem **quanto realmente vão receber** após taxas e prazos.

---

## 🎯 Objetivo

Desenvolver uma ferramenta gratuita e acessível que auxilie qualquer pessoa a entender, simular e calcular os valores líquidos de vendas feitas no crédito/débito, considerando:

- Taxas de adquirência (MDR padrão e flexível)
- Antecipação de recebíveis
- Impacto dos prazos e bandeiras no valor final
- Comparação entre modalidades de recebimento

O foco é mostrar **de forma clara e precisa quanto o cliente realmente recebe**, em cada cenário de venda.

---

## ⚙️ Como usar

Escolha a versão que melhor se encaixa com o seu objetivo:

- **Planilha Excel:** Acesse `1_simulacoes/0_excel/` e abra o arquivo `.xlsx` da versão desejada.
- **Script .bat (modo texto):** Vá até `1_simulacoes/1_calculadora-bat/` e execute o arquivo `.bat`.
- **Simulador Web:** Abra o arquivo `index.html` em `1_simulacoes/2_calculadora-web/` no navegador.

> Nenhuma instalação é necessária. Tudo funciona de forma local e offline.

---   

## 🗂️ Estrutura do Projeto – Detalhada

```text

📦 LiquiCalc   
├── 📁 0_conceitos/                                  # Fundamentos técnicos e explicações de cálculo
│   ├── 📄 0_mdr-padrao.md                           # Explicação da MDR padrão: conceito, fórmula e aplicação
│   ├── 📄 1_mdr-flex.md                             # Explicação da MDR flexível (fator 1 e fator 2)
│   └── 📄 2_antecipacao.md                          # Como funciona a antecipação de recebíveis e seu impacto nos valores
│
├── 📁 1_simulacoes/ 
│   ├── 📁 0_excel/ 
│   │   ├── 📄 README.md **
│   │   ├── 📁 0_LiquiCalc.1.3v/                     # Versão consolidada com todos os cálculos em um único arquivo
│   │   │   └── 📄 LiquiCalc.1.3.xlsx 
│   │   ├── 📁 1_simulador_mdr-padrao1.0v/           # Simulador exclusivo para cálculo da MDR padrão
│   │   │   └── 📄 simulador_mdr-padrao.xlsx
│   │   ├── 📁 2_simulador_mdr-flex1.1v/             # Simulador exclusivo para cálculo da MDR flexível
│   │   │   └── 📄 simulador_mdr-flex.xlsx 
│   │   └── 📁 3_simulador_antecipacao1.2v/          # Simulador para MDR padrão + antecipação de recebíveis
│   │       └── 📄 simulador_antecipacao.xlsx 
│   │ 
│   ├── 📁 1_calculadora-bat/ 
│   │   ├── 📄 README.md **
│   │   ├── 📁 LiquiCalc.2.3v/                       # Versão consolidada com todos os cálculos em um único script
│   │   │   └── 📄 LiquiCalc.bat 
│   │   ├── 📁 simulador_mdr-padrao2.0v/             # Script exclusivo para cálculo da MDR padrão
│   │   │   └── 📄 simulador_mdr-padrao.bat 
│   │   ├── 📁 simulador_mdr-flex2.1v/               # Script exclusivo para cálculo da MDR flexível
│   │   │   └── 📄 simulador_mdr-flex.bat 
│   │   └── 📁 simulador_antecipacao2.2v/            # Script para MDR padrão + antecipação de recebíveis
│   │       └── 📄 simulador_antecipacao.bat 
│   │
│   └── 📁 2_calculadora-web/                        # Simulações web interativas com HTML, CSS e JS
│       ├── 📄 README.md **
│       ├── 📁 LiquiCalc.3.3v/                       # Versão consolidada com todos os cálculos em uma única interface
│       │   ├── 📄 index.html 
│       │   ├── 📄 style.css 
│       │   └── 📄 script.js 
│       ├── 📁 simulador_mdr-padrao3.0v/             # Simulador exclusivo para cálculo da MDR padrão
│       │   ├── 📄 index.html 
│       │   ├── 📄 style.css 
│       │   └── 📄 script.js 
│       ├── 📁 simulador_mdr-flex3.1v/               # Simulador exclusivo para cálculo da MDR flexível
│       │   ├── 📄 index.html 
│       │   ├── 📄 style.css 
│       │   └── 📄 script.js 
│       └── 📁 simulador_antecipacao3.2v/            # Simulador para MDR padrão + antecipação de recebíveis
│           ├── 📄 index.html 
│           ├── 📄 style.css 
│           └── 📄 script.js 
│
├── 📁 2_docs/ 
│   └── 📄 roadmap.md                                # Etapas planejadas, progresso e próximos passos do LiquiCalc
│
├── 📄 LICENSE                                       # Licença de uso do projeto (MIT License)
└── 📄 README.md                                     # Apresentação geral: objetivo, uso, tecnologias e estrutura

```

---

## 📅 Cronograma de Releases

| Release         | Tópico                          | Descrição                                                                                                                                              | Versão           | Prazo Estimado | Status Atual |
|----------------|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|------------------|----------------|--------------|
| **Rel.1**       | Conceito e modelagem técnica     | Conceito e Modelagem de Cálculo das Modalidades de Recebimento: estudo técnico dos fundamentos e fórmulas aplicáveis                                 | 1.0.0            | 1 semana       | Em andamento |
| **Rel.1.1**     | Testes iniciais                  | Testes Iniciais de Validação dos Cálculos: simulações com exemplos reais para verificar a precisão matemática                                         | 1.0.1            | 1 dia          | Pendente     |
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

---

## 💻 Tecnologias utilizadas

- Excel
- Batch Script (.bat)
- HTML / CSS / JavaScript / Python
- Markdown
- GitHub Pages *(futuramente)*

---

© 2025 • Projeto LiquiCalc  
Distribuído sob os termos da [MIT License](./LICENSE).
