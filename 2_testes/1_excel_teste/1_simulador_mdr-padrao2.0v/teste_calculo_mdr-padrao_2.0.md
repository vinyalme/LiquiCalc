# Relatórios de Teste – MDR Padrão | Simulador Excel


Este documento apresenta os testes realizados para validação dos cálculos do sistema LiquiCalc, com foco em garantir precisão matemática, consistência lógica e confiabilidade técnica. Os testes foram divididos em dois grupos principais:

1. Testes de Valor Mínimo e Máximo – para verificar os limites operacionais do sistema.  
2. Testes de Crédito Parcelado – cobrindo todas as faixas de parcelamento de 1x a 21x, com variações de valores e taxas MDR.

> ⚠️ Importante: Todos os cálculos apresentados aqui seguem rigorosamente a lógica da modalidade MDR Padrão, conforme especificado no documento técnico [`0mdr-padrao.md`](https://github.com/vinyalme/LiquiCalc/blob/main/0_conceitos/0_mdr-padrao.md). **Ou seja, cada valor e cada simulação que você está vendo aqui serve para validar oficialmente esse arquivo.** Este conjunto de testes serve como referência oficial para validar qualquer implementação que utilize essa estrutura de cálculo.

---

## 🧾 Tabela 1 – Testes de Valor Mínimo e Máximo

| Tipo               | Teste                  | Modalidade         | Valor da Venda   | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|------------------------|---------------------|------------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Valor Mínimo Débito    | Débito              | R$ 0,02          | 50.00   | R$ 0,02 × 50% = R$ 0,01            | R$ 0,01                       | ✅ R$ 0,01 + 0,01 = R$ 0,02                       | R$ 0,00   | 100.00%    |
| Dados do Simulador | Valor Mínimo Débito    | Débito              | R$ 0,02          | 50.00   | R$ 0,02 × 50% = R$ 0,01            | R$ 0,01                       | ✅ R$ 0,01 + 0,01 = R$ 0,02                       | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Valor Mínimo Débito

| Tipo               | Teste                  | Modalidade         | Valor da Venda   | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|------------------------|---------------------|------------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Valor Mínimo Crédito   | Crédito à Vista     | R$ 0,02          | 50.00   | R$ 0,02 × 50% = R$ 0,01            | R$ 0,01                       | ✅ R$ 0,01 + 0,01 = R$ 0,02                        | R$ 0,00   | 100.00%    |
| Dados do Simulador | Valor Mínimo Crédito   | Crédito à Vista     | R$ 0,02          | 50.00   | R$ 0,02 × 50% = R$ 0,01            | R$ 0,01                       | ✅ R$ 0,01 + 0,01 = R$ 0,02                        | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Valor Mínimo Crédito

| Tipo               | Teste                  | Modalidade         | Valor da Venda       | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                             | Diferença | Precisão   |
|--------------------|------------------------|---------------------|----------------------|---------|------------------------------------|-------------------------------|------------------------------------------------------------|-----------|------------|
| Dados esperados    | Valor Máximo Débito    | Débito              | R$ 10.000.000,00     | 1.75    | R$ 10.000.000 × 1.75% = R$ 175.000 | R$ 9.825.000,00               | ✅ R$ 9.825.000,00 + R$ 175.000 = R$ 10.000.000,00          | R$ 0,00   | 100.00%    |
| Dados do Simulador | Valor Máximo Débito    | Débito              | R$ 10.000.000,00     | 1.75    | R$ 10.000.000 × 1.75% = R$ 175.000 | R$ 9.825.000,00               | ✅ R$ 9.825.000,00 + R$ 175.000 = R$ 10.000.000,00          | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Valor Máximo Débito

| Tipo               | Teste                  | Modalidade         | Valor da Venda       | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                             | Diferença | Precisão   |
|--------------------|------------------------|---------------------|----------------------|---------|------------------------------------|-------------------------------|------------------------------------------------------------|-----------|------------|
| Dados esperados    | Valor Máximo Crédito   | Crédito Parcelado   | R$ 10.000.000,00     | 1.75    | R$ 10.000.000 × 1.75% = R$ 175.000 | R$ 9.825.000,00               | ✅ R$ 9.825.000,00 + R$ 175.000 = R$ 10.000.000,00          | R$ 0,00   | 100.00%    |
| Dados do Simulador | Valor Máximo Crédito   | Crédito Parcelado   | R$ 10.000.000,00     | 1.75    | R$ 10.000.000 × 1.75% = R$ 175.000 | R$ 9.825.000,00               | ✅ R$ 9.825.000,00 + R$ 175.000 = R$ 10.000.000,00          | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Valor Máximo Crédito

---

## 💳 Tabela 2 – Testes de Crédito Parcelado (1x a 21x)

### 📌 Objetivo dos Testes de Parcelamento:  
Após validar os limites operacionais com valores mínimos e máximos, é necessário testar o comportamento do sistema em situações mais dinâmicas e recorrentes. Os testes de crédito parcelado simulam transações com diferentes quantidades de parcelas (de 1x a 21x), variando também as taxas MDR. Essa abordagem garante que o LiquiCalc mantenha sua precisão mesmo diante da complexidade crescente das operações.

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 1x  | Crédito Parcelado   | R$ 300,00      | 4.00    | R$ 300,00 × 4.00% = R$ 12,00       | R$ 288,00                     | ✅ R$ 288,00 + R$ 12,00 = R$ 300,00                | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 1x  | Crédito Parcelado   | R$ 300,00      | 4.00    | R$ 300,00 × 4.00% = R$ 12,00       | R$ 288,00                     | ✅ R$ 288,00 + R$ 12,00 = R$ 300,00                | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 1x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 2x  | Crédito Parcelado   | R$ 450,00      | 4.20    | R$ 450,00 × 4.20% = R$ 18,90       | R$ 431,10                     | ✅ R$ 431,10 + R$ 18,90 = R$ 450,00                | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 2x  | Crédito Parcelado   | R$ 450,00      | 4.20    | R$ 450,00 × 4.20% = R$ 18,90       | R$ 431,10                     | ✅ R$ 431,10 + R$ 18,90 = R$ 450,00                | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 2x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 3x  | Crédito Parcelado   | R$ 600,00      | 4.50    | R$ 600,00 × 4.50% = R$ 27,00       | R$ 573,00                     | ✅ R$ 573,00 + R$ 27,00 = R$ 600,00                | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 3x  | Crédito Parcelado   | R$ 600,00      | 4.50    | R$ 600,00 × 4.50% = R$ 27,00       | R$ 573,00                     | ✅ R$ 573,00 + R$ 27,00 = R$ 600,00                | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 3x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 4x  | Crédito Parcelado   | R$ 750,00      | 4.80    | R$ 750,00 × 4.80% = R$ 36,00       | R$ 714,00                     | ✅ R$ 714,00 + R$ 36,00 = R$ 750,00                | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 4x  | Crédito Parcelado   | R$ 750,00      | 4.80    | R$ 750,00 × 4.80% = R$ 36,00       | R$ 714,00                     | ✅ R$ 714,00 + R$ 36,00 = R$ 750,00                | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 4x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 5x  | Crédito Parcelado   | R$ 900,00      | 5.00    | R$ 900,00 × 5.00% = R$ 45,00       | R$ 855,00                     | ✅ R$ 855,00 + R$ 45,00 = R$ 900,00                | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 5x  | Crédito Parcelado   | R$ 900,00      | 5.00    | R$ 900,00 × 5.00% = R$ 45,00       | R$ 855,00                     | ✅ R$ 855,00 + R$ 45,00 = R$ 900,00                | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 5x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 6x  | Crédito Parcelado   | R$ 1.200,00    | 5.20    | R$ 1.200,00 × 5.20% = R$ 62,40     | R$ 1.137,60                   | ✅ R$ 1.137,60 + R$ 62,40 = R$ 1.200,00            | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 6x  | Crédito Parcelado   | R$ 1.200,00    | 5.20    | R$ 1.200,00 × 5.20% = R$ 62,40     | R$ 1.137,60                   | ✅ R$ 1.137,60 + R$ 62,40 = R$ 1.200,00            | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 6x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 7x  | Crédito Parcelado   | R$ 1.500,00    | 5.50    | R$ 1.500,00 × 5.50% = R$ 82,50     | R$ 1.417,50                   | ✅ R$ 1.417,50 + R$ 82,50 = R$ 1.500,00            | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 7x  | Crédito Parcelado   | R$ 1.500,00    | 5.50    | R$ 1.500,00 × 5.50% = R$ 82,50     | R$ 1.417,50                   | ✅ R$ 1.417,50 + R$ 82,50 = R$ 1.500,00            | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 7x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 8x  | Crédito Parcelado   | R$ 1.800,00    | 5.80    | R$ 1.800,00 × 5.80% = R$ 104,40    | R$ 1.695,60                   | ✅ R$ 1.695,60 + R$ 104,40 = R$ 1.800,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 8x  | Crédito Parcelado   | R$ 1.800,00    | 5.80    | R$ 1.800,00 × 5.80% = R$ 104,40    | R$ 1.695,60                   | ✅ R$ 1.695,60 + R$ 104,40 = R$ 1.800,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 8x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 9x  | Crédito Parcelado   | R$ 2.100,00    | 6.00    | R$ 2.100,00 × 6.00% = R$ 126,00    | R$ 1.974,00                   | ✅ R$ 1.974,00 + R$ 126,00 = R$ 2.100,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 9x  | Crédito Parcelado   | R$ 2.100,00    | 6.00    | R$ 2.100,00 × 6.00% = R$ 126,00    | R$ 1.974,00                   | ✅ R$ 1.974,00 + R$ 126,00 = R$ 2.100,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 9x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 10x | Crédito Parcelado   | R$ 2.500,00    | 6.20    | R$ 2.500,00 × 6.20% = R$ 155,00    | R$ 2.345,00                   | ✅ R$ 2.345,00 + R$ 155,00 = R$ 2.500,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 10x | Crédito Parcelado   | R$ 2.500,00    | 6.20    | R$ 2.500,00 × 6.20% = R$ 155,00    | R$ 2.345,00                   | ✅ R$ 2.345,00 + R$ 155,00 = R$ 2.500,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 10x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 11x | Crédito Parcelado   | R$ 3.000,00    | 6.50    | R$ 3.000,00 × 6.50% = R$ 195,00    | R$ 2.805,00                   | ✅ R$ 2.805,00 + R$ 195,00 = R$ 3.000,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 11x | Crédito Parcelado   | R$ 3.000,00    | 6.50    | R$ 3.000,00 × 6.50% = R$ 195,00    | R$ 2.805,00                   | ✅ R$ 2.805,00 + R$ 195,00 = R$ 3.000,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 11x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 12x | Crédito Parcelado   | R$ 3.500,00    | 6.80    | R$ 3.500,00 × 6.80% = R$ 238,00    | R$ 3.262,00                   | ✅ R$ 3.262,00 + R$ 238,00 = R$ 3.500,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 12x | Crédito Parcelado   | R$ 3.500,00    | 6.80    | R$ 3.500,00 × 6.80% = R$ 238,00    | R$ 3.262,00                   | ✅ R$ 3.262,00 + R$ 238,00 = R$ 3.500,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 12x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 13x | Crédito Parcelado   | R$ 4.000,00    | 7.00    | R$ 4.000,00 × 7.00% = R$ 280,00    | R$ 3.720,00                   | ✅ R$ 3.720,00 + R$ 280,00 = R$ 4.000,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 13x | Crédito Parcelado   | R$ 4.000,00    | 7.00    | R$ 4.000,00 × 7.00% = R$ 280,00    | R$ 3.720,00                   | ✅ R$ 3.720,00 + R$ 280,00 = R$ 4.000,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 13x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 14x | Crédito Parcelado   | R$ 4.500,00    | 7.20    | R$ 4.500,00 × 7.20% = R$ 324,00    | R$ 4.176,00                   | ✅ R$ 4.176,00 + R$ 324,00 = R$ 4.500,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 14x | Crédito Parcelado   | R$ 4.500,00    | 7.20    | R$ 4.500,00 × 7.20% = R$ 324,00    | R$ 4.176,00                   | ✅ R$ 4.176,00 + R$ 324,00 = R$ 4.500,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 14x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 15x | Crédito Parcelado   | R$ 5.000,00    | 7.50    | R$ 5.000,00 × 7.50% = R$ 375,00    | R$ 4.625,00                   | ✅ R$ 4.625,00 + R$ 375,00 = R$ 5.000,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 15x | Crédito Parcelado   | R$ 5.000,00    | 7.50    | R$ 5.000,00 × 7.50% = R$ 375,00    | R$ 4.625,00                   | ✅ R$ 4.625,00 + R$ 375,00 = R$ 5.000,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 15x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 16x | Crédito Parcelado   | R$ 5.500,00    | 7.80    | R$ 5.500,00 × 7.80% = R$ 429,00    | R$ 5.071,00                   | ✅ R$ 5.071,00 + R$ 429,00 = R$ 5.500,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 16x | Crédito Parcelado   | R$ 5.500,00    | 7.80    | R$ 5.500,00 × 7.80% = R$ 429,00    | R$ 5.071,00                   | ✅ R$ 5.071,00 + R$ 429,00 = R$ 5.500,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 16x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 17x | Crédito Parcelado   | R$ 6.000,00    | 8.00    | R$ 6.000,00 × 8.00% = R$ 480,00    | R$ 5.520,00                   | ✅ R$ 5.520,00 + R$ 480,00 = R$ 6.000,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 17x | Crédito Parcelado   | R$ 6.000,00    | 8.00    | R$ 6.000,00 × 8.00% = R$ 480,00    | R$ 5.520,00                   | ✅ R$ 5.520,00 + R$ 480,00 = R$ 6.000,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 17x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 18x | Crédito Parcelado   | R$ 6.500,00    | 8.20    | R$ 6.500,00 × 8.20% = R$ 533,00    | R$ 5.967,00                   | ✅ R$ 5.967,00 + R$ 533,00 = R$ 6.500,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 18x | Crédito Parcelado   | R$ 6.500,00    | 8.20    | R$ 6.500,00 × 8.20% = R$ 533,00    | R$ 5.967,00                   | ✅ R$ 5.967,00 + R$ 533,00 = R$ 6.500,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 18x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 19x | Crédito Parcelado   | R$ 7.000,00    | 8.50    | R$ 7.000,00 × 8.50% = R$ 595,00    | R$ 6.405,00                   | ✅ R$ 6.405,00 + R$ 595,00 = R$ 7.000,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 19x | Crédito Parcelado   | R$ 7.000,00    | 8.50    | R$ 7.000,00 × 8.50% = R$ 595,00    | R$ 6.405,00                   | ✅ R$ 6.405,00 + R$ 595,00 = R$ 7.000,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 19x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 20x | Crédito Parcelado   | R$ 7.500,00    | 8.80    | R$ 7.500,00 × 8.80% = R$ 660,00    | R$ 6.840,00                   | ✅ R$ 6.840,00 + R$ 660,00 = R$ 7.500,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 20x | Crédito Parcelado   | R$ 7.500,00    | 8.80    | R$ 7.500,00 × 8.80% = R$ 660,00    | R$ 6.840,00                   | ✅ R$ 6.840,00 + R$ 660,00 = R$ 7.500,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 20x

| Tipo               | Teste         | Modalidade         | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|---------------|---------------------|----------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Parcelado 21x | Crédito Parcelado   | R$ 8.000,00    | 9.00    | R$ 8.000,00 × 9.00% = R$ 720,00    | R$ 7.280,00                   | ✅ R$ 7.280,00 + R$ 720,00 = R$ 8.000,00           | R$ 0,00   | 100.00%    |
| Dados do Simulador | Parcelado 21x | Crédito Parcelado   | R$ 8.000,00    | 9.00    | R$ 8.000,00 × 9.00% = R$ 720,00    | R$ 7.280,00                   | ✅ R$ 7.280,00 + R$ 720,00 = R$ 8.000,00           | R$ 0,00   | 100.00%    |
- 🔗 Evidência do simulador_mdr-padrao Parcelado 21x
  
---

## 📊 Resumo de Precisão dos Testes

  | Métrica                 | Resultado        |
  |-------------------------|------------------|
  | Diferença Máxima        | R$ 0,00          |
  | Diferença Mínima        | R$ 0,00          |
  | Precisão Média          | 100.00%          |
  | Precisão Mínima         | 100.00%          |
  | Precisão Máxima         | 100.00%          |

Este resumo reforça a confiabilidade dos cálculos realizados pelo LiquiCalc, demonstrando consistência absoluta em todas as simulações testadas.

---

## 📝 Considerações Finais

Os testes apresentados neste relatório têm como objetivo validar a lógica de cálculo do LiquiCalc em diferentes cenários operacionais, incluindo valores extremos e todas as faixas de parcelamento disponíveis.

Embora os resultados demonstrem precisão total, é importante lembrar que:

- Estes testes não substituem auditorias contábeis formais.  
- Toda nova versão do LiquiCalc deve passar por este processo de validação antes de ser disponibilizada.  
- A manutenção da confiabilidade depende da continuidade dos testes em cada atualização futura.

Essa abordagem garante que o **LiquiCalc** mantenha sua precisão mesmo diante da complexidade crescente das operações.

---
