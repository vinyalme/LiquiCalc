# Relatórios de Teste – Antecipação | Conceito

Este documento apresenta os testes realizados para validação dos cálculos do sistema **LiquiCalc**, com foco em garantir **precisão matemática**, **consistência lógica** e **confiabilidade técnica**.  

# 📄 Relatório de Testes – Antecipação de Recebíveis | Conceito

Este documento apresenta os testes realizados para validação dos cálculos de antecipação no sistema LiquiCalc, com foco em garantir precisão matemática, consistência lógica e confiabilidade técnica. Os testes foram divididos em dois grupos principais:

- **Testes de Valor Mínimo e Máximo** – para verificar os limites operacionais do sistema.  
- **Testes de Crédito Parcelado com Antecipação** – cobrindo todas as faixas de parcelamento de 1x a 21x, com variações de valores e taxas de antecipação.

⚠️ Importante: Todos os cálculos seguem rigorosamente a lógica apresentada no documento técnico `modelo_antecipacao.md`. Este conjunto de testes serve como referência oficial para validar qualquer implementação que utilize essa estrutura de cálculo.

---

## 🧾 Tabela 1 – Testes de Valor Mínimo e Máximo

| Teste           | Tipo              | Parcelas | Valor da Venda  | MDR (%) | ANT (%) | 🧮 Cálculo MDR                  | 🧮 Cálculo Antecipação                  | 🧮 Valor Retido (Total)             | 🧮 Valor Líquido                       | ✅ Verificação                            | Diferença | Precisão |
|-----------------|-------------------|----------|-----------------|---------|---------|---------------------------------|-----------------------------------------|-------------------------------------|----------------------------------------|-------------------------------------------|-----------|----------|
| Valor Mínimo    | Crédito à Vista   | 1        | R$ 1,00         | 3.00    | 1.00    | R$ 1,00 × 3% = R$ 0,03          | R$ 0,97 × 1% × (1+1)/2 = R$ 0,01        | R$ 0,03 + R$ 0,01 = R$ 0,04         | R$ 1,00 − R$ 0,04 = R$ 0,96            | ✅ R$ 0,96 + R$ 0,04 = R$ 1,00            | R$ 0,00   | 100.00%  |
| Valor Máximo    | Crédito Parcelado | 21       | R$ 1.000.000,00 | 2.50    | 2.00    | R$ 1.000.000 × 2.5% = R$ 25.000 | R$ 975.000 × 2% × (21+1)/2 = R$ 214.500 | R$ 25.000 + R$ 214.500 = R$ 239.500 | R$ 1.000.000 − R$ 239.500 = R$ 760.500 | ✅ R$ 760.500 + R$ 239.500 = R$ 1.000.000 | R$ 0,00   | 100.00%  |

---

## 💳 Tabela 2 – Testes de Crédito Parcelado com Antecipação (1x a 5x)

📌 Objetivo dos Testes de Parcelamento:

Após validar os limites operacionais, é necessário testar o comportamento do sistema em situações recorrentes. Os testes simulam transações com diferentes quantidades de parcelas, aplicando a taxa de antecipação proporcional conforme a fórmula:

**Valor Líquido Final = V × (1 − MDR/100) × (1 − ANT/100 × (n + 1)/2)**

---
