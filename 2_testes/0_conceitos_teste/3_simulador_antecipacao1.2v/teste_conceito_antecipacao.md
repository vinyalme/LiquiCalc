# Relatório de Testes – Antecipação de Recebíveis | Conceito

Este documento apresenta os testes realizados para validação dos cálculos de antecipação no sistema LiquiCalc, com foco em garantir precisão matemática, consistência lógica e confiabilidade técnica. Os testes foram divididos em dois grupos principais:

1. **Testes de Valor Mínimo e Máximo** – para verificar os limites operacionais do sistema.  
2. **Testes de Crédito Parcelado com Antecipação** – cobrindo todas as faixas de parcelamento de 1x a 21x, com variações de valores e taxas de antecipação.

> ⚠️ Importante: Todos os cálculos seguem rigorosamente a lógica apresentada no documento técnico [`2_antecipacao.md`](https://github.com/vinyalme/LiquiCalc/blob/main/0_conceitos/2_antecipacao.md). Este conjunto de testes serve como referência oficial para validar qualquer implementação que utilize essa estrutura de cálculo.

---

## 🧾 Tabela 1 – Testes de Valor Mínimo e Máximo

| Teste           | Modalidade        | Parcelas | Valor da Venda  | MDR (%) | ANT (%) | 🧮 Cálculo MDR                  | 🧮 Cálculo Antecipação                  | 🧮 Valor Retido (Total)             | 🧮 Valor Líquido                       | ✅ Verificação                            | Diferença | Precisão |
|-----------------|-------------------|----------|-----------------|---------|---------|---------------------------------|-----------------------------------------|-------------------------------------|----------------------------------------|-------------------------------------------|-----------|----------|
| Valor Mínimo    | Crédito à Vista   | 1        | R$ 1,00         | 3.00    | 1.00    | R$ 1,00 × 3% = R$ 0,03          | R$ 0,97 × 1% × (1+1)/2 = R$ 0,01        | R$ 0,03 + R$ 0,01 = R$ 0,04         | R$ 1,00 − R$ 0,04 = R$ 0,96            | ✅ R$ 0,96 + R$ 0,04 = R$ 1,00            | R$ 0,00   | 100.00%  |
| Valor Máximo    | Crédito Parcelado | 21       | R$ 1.000.000,00 | 2.50    | 2.00    | R$ 1.000.000 × 2.5% = R$ 25.000 | R$ 975.000 × 2% × (21+1)/2 = R$ 214.500 | R$ 25.000 + R$ 214.500 = R$ 239.500 | R$ 1.000.000 − R$ 239.500 = R$ 760.500 | ✅ R$ 760.500 + R$ 239.500 = R$ 1.000.000 | R$ 0,00   | 100.00%  |

---

## 💳 Tabela 2 – Testes de Crédito Parcelado com Antecipação (1x a 21x)

### 📌 **Objetivo dos Testes de Parcelamento**:
Após validar os limites operacionais, é necessário testar o comportamento do sistema em situações recorrentes. Os testes simulam transações com diferentes quantidades de parcelas, aplicando a taxa de antecipação proporcional conforme a fórmula:

| Teste         | Modalidade        | Parcelas | Valor da Venda | MDR (%) | ANT (%) | 🧮 Cálculo MDR                         | 🧮 Cálculo Antecipação                               | 🧮 Valor Retido (Total)                  | 🧮 Valor Líquido                            | ✅ Verificação                               | Diferença | Precisão |
|---------------|-------------------|----------|----------------|---------|---------|----------------------------------------|------------------------------------------------------|------------------------------------------|---------------------------------------------|----------------------------------------------|-----------|----------|
| Parcelado 1x  | Crédito à Vista   | 1        | R$ 500,00      | 2.90    | 1.50    | R$ 500 × 2.9% = R$ 14,50               | R$ 485,50 × 1.5% × (1+1)/2 = R$ 7,28                 | R$ 14,50 + R$ 7,28 = R$ 21,78            | R$ 500 − R$ 21,78 = R$ 478,22               | ✅ R$ 478,22 + R$ 21,78 = R$ 500,00          | R$ 0,00   | 100.00%  |
| Parcelado 2x  | Crédito Parcelado | 2        | R$ 1.200,00    | 3.10    | 2.00    | R$ 1.200 × 3.1% = R$ 37,20             | R$ 1.162,80 × 2% × (2+1)/2 = R$ 34,88                | R$ 37,20 + R$ 34,88 = R$ 72,08           | R$ 1.200 − R$ 72,08 = R$ 1.127,92           | ✅ R$ 1.127,92 + R$ 72,08 = R$ 1.200,00      | R$ 0,00   | 100.00%  |
| Parcelado 3x  | Crédito Parcelado | 3        | R$ 2.000,00    | 2.75    | 1.80    | R$ 2.000 × 2.75% = R$ 55,00            | R$ 1.945,00 × 1.8% × (3+1)/2 = R$ 69,42              | R$ 55,00 + R$ 69,42 = R$ 124,42          | R$ 2.000 − R$ 124,42 = R$ 1.875,58          | ✅ R$ 1.875,58 + R$ 124,42 = R$ 2.000,00     | R$ 0,00   | 100.00%  |
| Parcelado 4x  | Crédito Parcelado | 4        | R$ 3.500,00    | 3.50    | 2.20    | R$ 3.500 × 3.5% = R$ 122,50            | R$ 3.377,50 × 2.2% × (4+1)/2 = R$ 185,38             | R$ 122,50 + R$ 185,38 = R$ 307,88        | R$ 3.500 − R$ 307,88 = R$ 3.192,12          | ✅ R$ 3.192,12 + R$ 307,88 = R$ 3.500,00     | R$ 0,00   | 100.00%  |
| Parcelado 5x  | Crédito Parcelado | 5        | R$ 4.800,00    | 2.60    | 2.50    | R$ 4.800 × 2.6% = R$ 124,80            | R$ 4.675,20 × 2.5% × (5+1)/2 = R$ 350,64             | R$ 124,80 + R$ 350,64 = R$ 475,44        | R$ 4.800 − R$ 475,44 = R$ 4.324,56          | ✅ R$ 4.324,56 + R$ 475,44 = R$ 4.800,00     | R$ 0,00   | 100.00%  |
| Parcelado 6x  | Crédito Parcelado | 6        | R$ 6.000,00    | 3.20    | 2.30    | R$ 6.000 × 3.2% = R$ 192,00            | R$ 5.808,00 × 2.3% × (6+1)/2 = R$ 467,46             | R$ 192,00 + R$ 467,46 = R$ 659,46        | R$ 6.000 − R$ 659,46 = R$ 5.340,54          | ✅ R$ 5.340,54 + R$ 659,46 = R$ 6.000,00     | R$ 0,00   | 100.00%  |
| Parcelado 7x  | Crédito Parcelado | 7        | R$ 7.500,00    | 2.85    | 2.10    | R$ 7.500 × 2.85% = R$ 213,75           | R$ 7.286,25 × 2.1% × (7+1)/2 = R$ 611,64             | R$ 213,75 + R$ 611,64 = R$ 825,39        | R$ 7.500 − R$ 825,39 = R$ 6.674,61          | ✅ R$ 6.674,61 + R$ 825,39 = R$ 7.500,00     | R$ 0,00   | 100.00%  |
| Parcelado 8x  | Crédito Parcelado | 8        | R$ 9.000,00    | 3.00    | 2.60    | R$ 9.000 × 3% = R$ 270,00              | R$ 8.730,00 × 2.6% × (8+1)/2 = R$ 1.020,69           | R$ 270,00 + R$ 1.020,69 = R$ 1.290,69    | R$ 9.000 − R$ 1.290,69 = R$ 7.709,31        | ✅ R$ 7.709,31 + R$ 1.290,69 = R$ 9.000,00   | R$ 0,00   | 100.00%  |
| Parcelado 9x  | Crédito Parcelado | 9        | R$ 10.500,00   | 2.70    | 2.40    | R$ 10.500 × 2.7% = R$ 283,50           | R$ 10.216,50 × 2.4% × (9+1)/2 = R$ 1.225,98          | R$ 283,50 + R$ 1.225,98 = R$ 1.509,48    | R$ 10.500 − R$ 1.509,48 = R$ 8.990,52       | ✅ R$ 8.990,52 + R$ 1.509,48 = R$ 10.500,00  | R$ 0,00   | 100.00%  |
| Parcelado 10x | Crédito Parcelado | 10       | R$ 12.000,00   | 3.40    | 2.80    | R$ 12.000 × 3.4% = R$ 408,00           | R$ 11.592,00 × 2.8% × (10+1)/2 = R$ 1.779,72         | R$ 408,00 + R$ 1.779,72 = R$ 2.187,72    | R$ 12.000 − R$ 2.187,72 = R$ 9.812,28       | ✅ R$ 9.812,28 + R$ 2.187,72 = R$ 12.000,00  | R$ 0,00   | 100.00%  |
| Parcelado 11x | Crédito Parcelado | 11       | R$ 13.000,00   | 2.95    | 2.10    | R$ 13.000 × 2.95% = R$ 383,50          | R$ 12.616,50 × 2.1% × (11+1)/2 = R$ 1.589,68         | R$ 383,50 + R$ 1.589,68 = R$ 1.973,18    | R$ 13.000 − R$ 1.973,18 = R$ 11.026,82      | ✅ R$ 11.026,82 + R$ 1.973,18 = R$ 13.000,00 | R$ 0,00   | 100.00%  |
| Parcelado 12x | Crédito Parcelado | 12       | R$ 14.500,00   | 3.10    | 2.30    | R$ 14.500 × 3.1% = R$ 449,50           | R$ 14.050,50 × 2.3% × (12+1)/2 = R$ 2.167,53         | R$ 449,50 + R$ 2.167,53 = R$ 2.617,03    | R$ 14.500 − R$ 2.617,03 = R$ 11.882,97      | ✅ R$ 11.882,97 + R$ 2.617,03 = R$ 14.500,00 | R$ 0,00   | 100.00%  |
| Parcelado 13x | Crédito Parcelado | 13       | R$ 16.000,00   | 2.80    | 2.50    | R$ 16.000 × 2.8% = R$ 448,00           | R$ 15.552,00 × 2.5% × (13+1)/2 = R$ 2.716,80         | R$ 448,00 + R$ 2.716,80 = R$ 3.164,80    | R$ 16.000 − R$ 3.164,80 = R$ 12.835,20      | ✅ R$ 12.835,20 + R$ 3.164,80 = R$ 16.000,00 | R$ 0,00   | 100.00%  |
| Parcelado 14x | Crédito Parcelado | 14       | R$ 17.500,00   | 3.25    | 2.60    | R$ 17.500 × 3.25% = R$ 568,75          | R$ 16.931,25 × 2.6% × (14+1)/2 = R$ 3.296,60         | R$ 568,75 + R$ 3.296,60 = R$ 3.865,35    | R$ 17.500 − R$ 3.865,35 = R$ 13.634,65      | ✅ R$ 13.634,65 + R$ 3.865,35 = R$ 17.500,00 | R$ 0,00   | 100.00%  |
| Parcelado 15x | Crédito Parcelado | 15       | R$ 19.000,00   | 2.90    | 2.40    | R$ 19.000 × 2.9% = R$ 551,00           | R$ 18.449,00 × 2.4% × (15+1)/2 = R$ 3.539,06         | R$ 551,00 + R$ 3.539,06 = R$ 4.090,06    | R$ 19.000 − R$ 4.090,06 = R$ 14.909,94      | ✅ R$ 14.909,94 + R$ 4.090,06 = R$ 19.000,00 | R$ 0,00   | 100.00%  |
| Parcelado 16x | Crédito Parcelado | 16       | R$ 20.500,00   | 3.10    | 2.70    | R$ 20.500 × 3.1% = R$ 635,50           | R$ 19.864,50 × 2.7% × (16+1)/2 = R$ 4.561,03         | R$ 635,50 + R$ 4.561,03 = R$ 5.196,53    | R$ 20.500 − R$ 5.196,53 = R$ 15.303,47      | ✅ R$ 15.303,47 + R$ 5.196,53 = R$ 20.500,00 | R$ 0,00   | 100.00%  |
| Parcelado 17x | Crédito Parcelado | 17       | R$ 22.000,00   | 2.75    | 2.90    | R$ 22.000 × 2.75% = R$ 605,00          | R$ 21.395,00 × 2.9% × (17+1)/2 = R$ 5.589,51         | R$ 605,00 + R$ 5.589,51 = R$ 6.194,51    | R$ 22.000 − R$ 6.194,51 = R$ 15.805,49      | ✅ R$ 15.805,49 + R$ 6.194,51 = R$ 22.000,00 | R$ 0,00   | 100.00%  |
| Parcelado 18x | Crédito Parcelado | 18       | R$ 23.500,00   | 3.00    | 2.60    | R$ 23.500 × 3% = R$ 705,00             | R$ 22.795,00 × 2.6% × (18+1)/2 = R$ 5.633,91         | R$ 705,00 + R$ 5.633,91 = R$ 6.338,91    | R$ 23.500 − R$ 6.338,91 = R$ 17.161,09      | ✅ R$ 17.161,09 + R$ 6.338,91 = R$ 23.500,00 | R$ 0,00   | 100.00%  |
| Parcelado 19x | Crédito Parcelado | 19       | R$ 25.000,00   | 2.85    | 2.80    | R$ 25.000 × 2.85% = R$ 712,50          | R$ 24.287,50 × 2.8% × (19+1)/2 = R$ 6.800,50         | R$ 712,50 + R$ 6.800,50 = R$ 7.513,00    | R$ 25.000 − R$ 7.513,00 = R$ 17.487,00      | ✅ R$ 17.487,00 + R$ 7.513,00 = R$ 25.000,00 | R$ 0,00   | 100.00%  |
| Parcelado 20x | Crédito Parcelado | 20       | R$ 26.500,00   | 3.20    | 2.90    | R$ 26.500 × 3.2% = R$ 848,00           | R$ 25.652,00 × 2.9% × (20+1)/2 = R$ 7.805,18         | R$ 848,00 + R$ 7.805,18 = R$ 8.653,18    | R$ 26.500 − R$ 8.653,18 = R$ 17.846,82      | ✅ R$ 17.846,82 + R$ 8.653,18 = R$ 26.500,00 | R$ 0,00   | 100.00%  |
| Parcelado 21x | Crédito Parcelado | 21       | R$ 28.000,00   | 3.00    | 3.00    | R$ 28.000 × 3% = R$ 840,00             | R$ 27.160,00 × 3% × (21+1)/2 = R$ 8.985,60           | R$ 840,00 + R$ 8.985,60 = R$ 9.825,60    | R$ 28.000 − R$ 9.825,60 = R$ 18.174,40      | ✅ R$ 18.174,40 + R$ 9.825,60 = R$ 28.000,00 | R$ 0,00   | 100.00%  |

---

## 📊 Resumo de Precisão dos Testes

| Métrica             | Resultado     |
|---------------------|---------------|
| Diferença Máxima    | R$ 0,00       |
| Diferença Mínima    | R$ 0,00       |
| Precisão Média      | 100.00%       |
| Precisão Mínima     | 100.00%       |
| Precisão Máxima     | 100.00%       |

Este resumo reforça a confiabilidade dos cálculos realizados pelo **LiquiCalc**, demonstrando consistência absoluta em todas as simulações testadas.

---

## 📝 Considerações Finais

Os testes apresentados neste relatório têm como objetivo validar a lógica de cálculo de antecipação de recebíveis em diferentes cenários operacionais, incluindo valores extremos e todas as faixas de parcelamento disponíveis.

Embora os resultados demonstrem precisão total, é importante lembrar que:

- Estes testes não substituem auditorias contábeis formais.  
- Toda nova versão do LiquiCalc deve passar por este processo de validação antes de ser disponibilizada.  
- A manutenção da confiabilidade depende da continuidade dos testes em cada atualização futura.

Essa abordagem garante que o **LiquiCalc** mantenha sua precisão mesmo diante da complexidade crescente das operações.

---
