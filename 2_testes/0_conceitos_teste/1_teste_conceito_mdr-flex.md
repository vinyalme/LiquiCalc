# Relatórios de Teste – MDR Flex | Conceito

Este documento apresenta os testes realizados para validação dos cálculos do sistema **LiquiCalc**, com foco em garantir **precisão matemática**, **consistência lógica** e **confiabilidade técnica**.  

Os testes foram divididos em dois grupos principais:

1. **Testes de Valor Mínimo e Máximo** – para verificar os limites operacionais do sistema.  
2. **Testes de Crédito Parcelado com Fator Flexível** – cobrindo todas as faixas de parcelamento de 1x a 21x, com variações de valores e aplicação dos fatores MDR Flex.  

> ⚠️ **Importante**: Todos os cálculos apresentados aqui seguem rigorosamente a lógica da modalidade **MDR Flex**, conforme especificado no documento técnico [`1_mdr-flex.md`](https://github.com/vinyalme/LiquiCalc/blob/main/0_conceitos/1_mdr-flex.md).  
> Ou seja, cada valor e cada simulação que você está vendo aqui serve para validar oficialmente esse arquivo.  

Este conjunto de testes serve como **referência oficial** para validar qualquer implementação que utilize essa estrutura de cálculo.  

> 🔒 **Observação técnica**: A modalidade MDR Flex é aplicável **exclusivamente a transações no crédito**.  
> Não se aplica a operações no débito.  

---

## 🧾 Tabela 1 – Testes de Valor Mínimo e Máximo (MDR Flex)

| Teste         | Tipo    | Parcelas | Valor da Venda | Fator Base (%) | Fator 1 (%) | Fator Adicional (%) | Fator Total (%) | 🧮 Valor Retido (Taxa)                                                                 | 🧮 Valor Líquido | ✅ Verificação                                    | Diferença | Precisão |
|---------------|---------|----------|----------------|----------------|-------------|----------------------|------------------|----------------------------------------------------------------------------------------|------------------|--------------------------------------------------|-----------|----------|
| Valor Mínimo  | Crédito | 1        | R$ 0,50        | 1.50           | 2.00        | —                    | 3.50             | R$ 0,50 × (1.50% + 2.00%) = R$ 0,50 × 3.50% = R$ 0,0175 ≈ R$ 0,02                      | R$ 0,48          | ✅ R$ 0,48 + R$ 0,02 = R$ 0,50                     | R$ 0,00   | 100,00%  |
| Valor Máximo  | Crédito | 21       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 59.00            | R$ 10.000.000 × (6.00% + 3.00% + 20×2.50%) = R$ 10.000.000 × 59.00% = R$ 5.900.000,00 | R$ 4.100.000,00  | ✅ R$ 4.100.000,00 + R$ 5.900.000,00 = R$ 10.000.000 | R$ 0,00   | 100,00%  |

---

## 💳 Tabela 2 – Testes de Crédito Parcelado com Fator Flexível (1x a 21x)

📌 **Objetivo dos Testes de Parcelamento**:  
Após validar os limites operacionais com valores mínimos e máximos, é necessário testar o comportamento do sistema em situações mais dinâmicas e recorrentes.  

### 🧾 Tabela 2 – Parcelamento de 1x a 21x (Venda de R$ 10.000.000,00)

| Teste          | Tipo    | Parcelas | Valor da Venda | Fator base (%) | Fator 1 (%) | Fator Adicional (%) | Cálculo Taxa                            | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido | ✅ Verificação                         | Diferença | Precisão |
|----------------|---------|----------|----------------|----------------|-------------|----------------------|-----------------------------------------|----------------|------------------------|------------------|---------------------------------------|-----------|----------|
| Parcelado 1x   | Crédito | 1        | R$ 10.000.000  | 6.00           | 3.00        | —                    | 6.00% + 3.00%                           | 9.00%          | R$ 900,000.00          | R$ 9,100,000.00  | ✅ R$ 9,100,000 + R$ 900,000           | R$ 0,00   | 100,00%  |
| Parcelado 2x   | Crédito | 2        | R$ 10.000.000  | 2.18           | 3.00        | 2.50                 | 2.18% + 3.00% + 1×2.50%                 | 7.68%          | R$ 768,000.00          | R$ 9,232,000.00  | ✅ R$ 9,232,000 + R$ 768,000           | R$ 0,00   | 100,00%  |
| Parcelado 3x   | Crédito | 3        | R$ 10.000.000  | 2.18           | 3.00        | 2.50                 | 2.18% + 3.00% + 2×2.50%                 | 10.18%         | R$ 1,018,000.00        | R$ 8,982,000.00  | ✅ R$ 8,982,000 + R$ 1,018,000         | R$ 0,00   | 100,00%  |
| Parcelado 4x   | Crédito | 4        | R$ 10.000.000  | 2.18           | 3.00        | 2.50                 | 2.18% + 3.00% + 3×2.50%                 | 12.68%         | R$ 1,268,000.00        | R$ 8,732,000.00  | ✅ R$ 8,732,000 + R$ 1,268,000         | R$ 0,00   | 100,00%  |
| Parcelado 5x   | Crédito | 5        | R$ 10.000.000  | 2.18           | 3.00        | 2.50                 | 2.18% + 3.00% + 4×2.50%                 | 15.18%         | R$ 1,518,000.00        | R$ 8,482,000.00  | ✅ R$ 8,482,000 + R$ 1,518,000         | R$ 0,00   | 100,00%  |
| Parcelado 6x   | Crédito | 6        | R$ 10.000.000  | 2.18           | 3.00        | 2.50                 | 2.18% + 3.00% + 5×2.50%                 | 17.68%         | R$ 1,768,000.00        | R$ 8,232,000.00  | ✅ R$ 8,232,000 + R$ 1,768,000         | R$ 0,00   | 100,00%  |
| Parcelado 7x   | Crédito | 7        | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 6×2.50%                 | 24.00%         | R$ 2,400,000.00        | R$ 7,600,000.00  | ✅ R$ 7,600,000 + R$ 2,400,000         | R$ 0,00   | 100,00%  |
| Parcelado 8x   | Crédito | 8        | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 7×2.50%                 | 26.50%         | R$ 2,650,000.00        | R$ 7,350,000.00  | ✅ R$ 7,350,000 + R$ 2,650,000         | R$ 0,00   | 100,00%  |
| Parcelado 9x   | Crédito | 9        | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 8×2.50%                 | 29.00%         | R$ 2,900,000.00        | R$ 7,100,000.00  | ✅ R$ 7,100,000 + R$ 2,900,000         | R$ 0,00   | 100,00%  |
| Parcelado 10x  | Crédito | 10       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 9×2.50%                 | 31.50%         | R$ 3,150,000.00        | R$ 6,850,000.00  | ✅ R$ 6,850,000 + R$ 3,150,000         | R$ 0,00   | 100,00%  |
| Parcelado 11x  | Crédito | 11       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 10×2.50%                | 34.00%         | R$ 3,400,000.00        | R$ 6,600,000.00  | ✅ R$ 6,600,000 + R$ 3,400,000         | R$ 0,00   | 100,00%  |
| Parcelado 12x  | Crédito | 12       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 11×2.50%                | 36.50%         | R$ 3,650,000.00        | R$ 6,350,000.00  | ✅ R$ 6,350,000 + R$ 3,650,000         | R$ 0,00   | 100,00%  |
| Parcelado 13x  | Crédito | 13       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 12×2.50%                | 39.00%         | R$ 3,900,000.00        | R$ 6,100,000.00  | ✅ R$ 6,100,000 + R$ 3,900,000         | R$ 0,00   | 100,00%  |
| Parcelado 14x  | Crédito | 14       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 13×2.50%                | 41.50%         | R$ 4,150,000.00        | R$ 5,850,000.00  | ✅ R$ 5,850,000 + R$ 4,150,000         | R$ 0,00   | 100,00%  |
| Parcelado 15x  | Crédito | 15       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 14×2.50%                | 44.00%         | R$ 4,400,000.00        | R$ 5,600,000.00  | ✅ R$ 5,600,000 + R$ 4,400,000         | R$ 0,00   | 100,00%  |
| Parcelado 16x  | Crédito | 16       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 15×2.50%                | 46.50%         | R$ 4,650,000.00        | R$ 5,350,000.00  | ✅ R$ 5,350,000 + R$ 4,650,000         | R$ 0,00   | 100,00%  |
| Parcelado 17x  | Crédito | 17       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 16×2.50%                | 49.00%         | R$ 4,900,000.00        | R$ 5,100,000.00  | ✅ R$ 5,100,000 + R$ 4,900,000         | R$ 0,00   | 100,00%  |
| Parcelado 18x  | Crédito | 18       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 17×2.50%                | 51.50%         | R$ 5,150,000.00        | R$ 4,850,000.00  | ✅ R$ 4,850,000 + R$ 5,150,000         | R$ 0,00   | 100,00%  |
| Parcelado 19x  | Crédito | 19       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 18×2.50%                | 54.00%         | R$ 5,400,000.00        | R$ 4,600,000.00  | ✅ R$ 4,600,000 + R$ 5,400,000         | R$ 0,00   | 100,00%  |
| Parcelado 20x  | Crédito | 20       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 19×2.50%                | 56.50%         | R$ 5,650,000.00        | R$ 4,350,000.00  | ✅ R$ 4,350,000 + R$ 5,650,000         | R$ 0,00   | 100,00%  |
| Parcelado 21x  | Crédito | 21       | R$ 10.000.000  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + 20×2.50%                | 59.00%         | R$ 5,900,000.00        | R$ 4,100,000.00  | ✅ R$ 4,100,000 + R$ 5,900,000         | R$ 0,00   | 100,00%  |

---

📊 **Resumo de Precisão dos Testes**

| Métrica             | Resultado |
|---------------------|-----------|
| Diferença Máxima    | R$ 0,00   |
| Diferença Mínima    | R$ 0,00   |
| Precisão Média      | 100,00%   |
| Precisão Mínima     | 100,00%   |
| Precisão Máxima     | 100,00%   |

Este resumo reforça a confiabilidade dos cálculos realizados pelo **LiquiCalc**, demonstrando consistência absoluta em todas as simulações testadas.  

---

📝 **Considerações Finais**  

Os testes apresentados neste relatório têm como objetivo validar a lógica de cálculo do **LiquiCalc** em diferentes cenários operacionais, incluindo valores extremos e todas as faixas de parcelamento disponíveis com aplicação de **MDR Flex**.  

Embora os resultados demonstrem precisão total, é importante lembrar que:  

- Estes testes não substituem auditorias contábeis formais.  
- Toda nova versão do LiquiCalc deve passar por este processo de validação antes de ser disponibilizada.  
- A manutenção da confiabilidade depende da continuidade dos testes em cada atualização futura.  

Os testes de crédito parcelado com **MDR Flex** simulam transações com diferentes quantidades de parcelas (de 1x a 21x), variando também os fatores aplicados (Fator 1 e Fator 2).  

Essa abordagem garante que o **LiquiCalc** mantenha sua precisão mesmo diante da complexidade crescente das operações.

