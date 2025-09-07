# 📌 Visão do Planejamento de Testes

Este documento apresenta o planejamento dos testes do projeto **LiquiCalc**, segmentado por modalidade de cálculo, tipo de simulador e versão. O objetivo é garantir a validação técnica dos resultados, a consistência entre diferentes interfaces (Excel, BAT, Web) e a rastreabilidade dos cenários testados. Os testes estão organizados em três níveis: conceituais, funcionais e integrados, cobrindo desde a lógica matemática até o comportamento das interfaces.

---

## 🧪 Testes por Modalidade e Simulador

| Modalidade             | Tipo de Simulador | Versão | Arquivo de Teste                              | Estado           |
|------------------------|-------------------|--------|-----------------------------------------------|------------------|
| MDR Padrão             | Conceitual        | —      | 0_teste_conceito_mdr-padrao.md                | Atualização 🛠️   |
| MDR Flexível           | Conceitual        | —      | 1_teste_conceito_mdr-flex.md                  | Estruturado 📐    |
| Antecipação            | Conceitual        | —      | 2_teste_conceito_antecipacao.md               | Estruturado 📐    |
| MDR Padrão             | Excel             | 1.0    | teste_calculo_mdr-padrao_1.0.md               | Planejado 📌      |
| MDR Flexível           | Excel             | 1.1    | teste_calculo_mdr-flex_1.1.md                 | Planejado 📌      |
| Antecipação            | Excel             | 1.2    | teste_calculo_antecipacao_1.2.md              | Planejado 📌      |
| Consolidado            | Excel             | 1.3    | teste_calculo_liquicalc_1.3.md                | Planejado 📌      |
| MDR Padrão             | BAT               | 2.0    | teste_calculo_mdr-padrao_2.0.md               | Planejado 📌      |
| MDR Flexível           | BAT               | 2.1    | teste_calculo_mdr-flex_2.1.md                 | Planejado 📌      |
| Antecipação            | BAT               | 2.2    | teste_calculo_antecipacao_2.2.md              | Planejado 📌      |
| Consolidado            | BAT               | 2.3    | teste_calculo_liquicalc_2.3.md                | Planejado 📌      |
| MDR Padrão             | Web               | 3.0    | teste_calculo_mdr-padrao_3.0.md               | Planejado 📌      |
| MDR Flexível           | Web               | 3.1    | teste_calculo_mdr-flex_3.1.md                 | Planejado 📌      |
| Antecipação            | Web               | 3.2    | teste_calculo_antecipacao_3.2.md              | Planejado 📌      |
| Consolidado            | Web               | 3.3    | teste_calculo_liquicalc_3.3.md                | Planejado 📌      |

---

## 📊 Classificação por Estado de Maturidade

| Classificação | Letra | Definição Técnica                                                                 |
|---------------|--------|------------------------------------------------------------------------------------|
| Validado      | V      | Documento revisado, testado e aprovado para uso técnico                           |
| Atualização   | A      | Documento existente que precisa ser revisado ou expandido                         |
| Redigido      | R      | Conteúdo escrito, mas ainda sem validação técnica ou revisão formal               |
| Estruturado   | E      | Documento com estrutura definida, mas sem conteúdo completo                       |
| Planejado     | P      | Documento previsto no escopo, ainda não iniciado                                  |
| Obsoleto      | O      | Documento descontinuado ou substituído por versão mais atual                      |

---

## 📎 Considerações Finais

A estrutura de testes do LiquiCalc foi pensada para acompanhar cada etapa do desenvolvimento, permitindo validações precisas e comparações entre versões. A separação por tipo de simulador e versão facilita a manutenção dos scripts e a identificação de regressões. Este documento será atualizado conforme novos testes forem implementados ou refinados, mantendo o alinhamento entre escopo técnico e qualidade funcional.
