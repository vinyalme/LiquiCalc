# Relatórios de Teste – MDR Flex | Simulador Excel

Este documento apresenta os testes realizados para validação dos cálculos do sistema **LiquiCalc**, com foco em garantir **precisão matemática**, **consistência lógica** e **confiabilidade técnica**.  

Os testes foram divididos em dois grupos principais:

1. **Testes de Valor Mínimo e Máximo** – para verificar os limites operacionais do sistema.  
2. **Testes de Crédito Parcelado com Fator Flexível** – cobrindo todas as faixas de parcelamento de 1x a 21x, com variações de valores e aplicação dos fatores MDR Flex.  

> ⚠️ **Importante**: Todos os cálculos apresentados aqui seguem rigorosamente a lógica da modalidade **MDR Flex**, conforme especificado no documento técnico [`1_mdr-flex.md`](https://github.com/vinyalme/LiquiCalc/blob/main/0_conceitos/1_mdr-flex.md). Ou seja, cada valor e cada simulação que você está vendo aqui serve para validar oficialmente esse arquivo.  

Este conjunto de testes serve como **referência oficial** para validar qualquer implementação que utilize essa estrutura de cálculo.  

> 🔒 **Observação técnica**: A modalidade MDR Flex é aplicável **exclusivamente a transações no crédito**.  
> **Não se aplica a operações no débito.**  

---

## 🧾 Tabela 1 – Testes de Valor Mínimo e Máximo (MDR Flex)



| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa)  | 🧮 Valor Líquido | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|-------------------------|-------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Valor Mínimo  | Crédito à Vista    | 1        | R$ 0,50           | 1.50           | 2.00        | —                    | 1.50% + 2.00%                    | 3.5%           | R$ 0,02                 | R$ 0,48           | ✅ R$ 0,48 + R$ 0,02 = R$ 0,50                            | R$ 0,00   | 100.00%  |
| Dados do Simulador | Valor Mínimo  | Crédito à Vista    | 1        | R$ 0,50           | 1.50           | 2.00        | —                    | 1.50% + 2.00%                    | 3.5%           | R$ 0,02                 | R$ 0,48           | ✅ R$ 0,48 + R$ 0,02 = R$ 0,50                            | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Valor Mínimo Crédito à Vista - [Simples](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/1_excel_teste/2_simulador_mdr-flex2.1v/evidencias_de_calculo/simulador_mdr-flex_valor_m%C3%ADnimo_cr%C3%A9dito_simples.png) e [Detalhado](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/1_excel_teste/2_simulador_mdr-flex2.1v/evidencias_de_calculo/simulador_mdr-flex_valor_m%C3%ADnimo_cr%C3%A9dito_detalhado.png)

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa)  | 🧮 Valor Líquido | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|-------------------------|-------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Valor Máximo  | Crédito Parcelado  | 21       | R$ 10.000.000,00  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + (21 − 1) × 2.50% | 59.00%         | R$ 5.900.000,00         | R$ 4.100.000,00   | ✅ R$ 4.100.000,00 + R$ 5.900.000,00 = R$ 10.000.000,00   | R$ 0,00   | 100.00%  |
| Dados do Simulador | Valor Máximo  | Crédito Parcelado  | 21       | R$ 10.000.000,00  | 6.00           | 3.00        | 2.50                 | 6.00% + 3.00% + (21 − 1) × 2.50% | 59.00%         | R$ 5.900.000,00         | R$ 4.100.000,00   | ✅ R$ 4.100.000,00 + R$ 5.900.000,00 = R$ 10.000.000,00   | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Valor Mínimo Crédito Parcelado - [Simples](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/1_excel_teste/2_simulador_mdr-flex2.1v/evidencias_de_calculo/simulador_mdr-flex_valor_m%C3%A1ximo_cr%C3%A9dito_simples.png) e [Detalhado](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/1_excel_teste/2_simulador_mdr-flex2.1v/evidencias_de_calculo/simulador_mdr-flex_valor_m%C3%A1ximo_cr%C3%A9dito_detalhado.png)

---

## 💳 Tabela 2 – Testes de Crédito Parcelado com Fator Flexível (1x a 21x)

### 📌 **Objetivo dos Testes de Parcelamento**:  
Após validar os limites operacionais com valores mínimos e máximos, é necessário testar o comportamento do sistema em situações mais dinâmicas e recorrentes.  

| Tipo               | Teste          | Modalidade        | Parcelas | Valor da Venda    | Fator base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|----------------|-------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 1x   | Crédito à Vista   | 1        | R$ 1.000,00       | 1.80           | 2.50        | —                    | 1.80% + 2.50%                    | 4.30%          | R$ 43,00               | R$ 957,00          | ✅ R$ 957,00 + R$ 43,00 = R$ 1.000,00                     | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 1x   | Crédito à Vista   | 1        | R$ 1.000,00       | 1.80           | 2.50        | —                    | 1.80% + 2.50%                    | 4.30%          | R$ 43,00               | R$ 957,00          | ✅ R$ 957,00 + R$ 43,00 = R$ 1.000,00                     | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Valor Mínimo Crédito à Vista - [Simples](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/1_excel_teste/2_simulador_mdr-flex2.1v/evidencias_de_calculo/simulador_mdr-flex_parcelado_1x_simples.png) e [Detalhado](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/1_excel_teste/2_simulador_mdr-flex2.1v/evidencias_de_calculo/simulador_mdr-flex_parcelado_1x_detalhado.png)

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 2x  | Crédito Parcelado  | 2        | R$ 1.500,00       | 2.00           | 2.50        | 2.80                 | 2.00% + 2.50% + (2 - 1) × 2.80%  | 7.30%          | R$ 109,50              | R$ 1.390,50        | ✅ R$ 1.390,50 + R$ 109,50 = R$ 1.500,00                  | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 2x  | Crédito Parcelado  | 2        | R$ 1.500,00       | 2.00           | 2.50        | 2.80                 | 2.00% + 2.50% + (2 - 1) × 2.80%  | 7.30%          | R$ 109,50              | R$ 1.390,50        | ✅ R$ 1.390,50 + R$ 109,50 = R$ 1.500,00                  | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 2x - [Simples](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/1_excel_teste/2_simulador_mdr-flex2.1v/evidencias_de_calculo/simulador_mdr-flex_parcelado_2x_simples.png) e [Detalhado](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/1_excel_teste/2_simulador_mdr-flex2.1v/evidencias_de_calculo/simulador_mdr-flex_parcelado_2x_detalhado.png)

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 3x  | Crédito Parcelado  | 3        | R$ 2.000,00       | 2.00           | 2.50        | 2.80                 | 2.00% + 2.50% + (3 - 1) × 2.80%  | 10.10%         | R$ 202,00              | R$ 1.798,00        | ✅ R$ 1.798,00 + R$ 202,00 = R$ 2.000,00                  | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 3x  | Crédito Parcelado  | 3        | R$ 2.000,00       | 2.00           | 2.50        | 2.80                 | 2.00% + 2.50% + (3 - 1) × 2.80%  | 10.10%         | R$ 202,00              | R$ 1.798,00        | ✅ R$ 1.798,00 + R$ 202,00 = R$ 2.000,00                  | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 3x - [Simples](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/1_excel_teste/2_simulador_mdr-flex2.1v/evidencias_de_calculo/simulador_mdr-flex_parcelado_3x_simples.png) e [Detalhado](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/1_excel_teste/2_simulador_mdr-flex2.1v/evidencias_de_calculo/simulador_mdr-flex_parcelado_3x_detalhado.png)

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 4x  | Crédito Parcelado  | 4        | R$ 2.500,00       | 2.00           | 2.50        | 2.80                 | 2.00% + 2.50% + (4 - 1) × 2.80%  | 12.90%         | R$ 322,50              | R$ 2.177,50        | ✅ R$ 2.177,50 + R$ 322,50 = R$ 2.500,00                  | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 4x  | Crédito Parcelado  | 4        | R$ 2.500,00       | 2.00           | 2.50        | 2.80                 | 2.00% + 2.50% + (4 - 1) × 2.80%  | 12.90%         | R$ 322,50              | R$ 2.177,50        | ✅ R$ 2.177,50 + R$ 322,50 = R$ 2.500,00                  | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 4x - [Simples](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/1_excel_teste/2_simulador_mdr-flex2.1v/evidencias_de_calculo/simulador_mdr-flex_parcelado_4x_simples.png) e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 5x  | Crédito Parcelado  | 5        | R$ 3.000,00       | 2.00           | 2.50        | 2.80                 | 2.00% + 2.50% + (5 - 1) × 2.80%  | 15.70%         | R$ 471,00              | R$ 2.529,00        | ✅ R$ 2.529,00 + R$ 471,00 = R$ 3.000,00                  | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 5x  | Crédito Parcelado  | 5        | R$ 3.000,00       | 2.00           | 2.50        | 2.80                 | 2.00% + 2.50% + (5 - 1) × 2.80%  | 15.70%         | R$ 471,00              | R$ 2.529,00        | ✅ R$ 2.529,00 + R$ 471,00 = R$ 3.000,00                  | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 5x - [Simples]() e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 6x  | Crédito Parcelado  | 6        | R$ 3.500,00       | 2.00           | 2.50        | 2.80                 | 2.00% + 2.50% + (6 - 1) × 2.80%  | 18.50%         | R$ 647,50              | R$ 2.852,50        | ✅ R$ 2.852,50 + R$ 647,50 = R$ 3.500,00                  | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 6x  | Crédito Parcelado  | 6        | R$ 3.500,00       | 2.00           | 2.50        | 2.80                 | 2.00% + 2.50% + (6 - 1) × 2.80%  | 18.50%         | R$ 647,50              | R$ 2.852,50        | ✅ R$ 2.852,50 + R$ 647,50 = R$ 3.500,00                  | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 6x - [Simples]() e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 7x  | Crédito Parcelado  | 7        | R$ 4.000,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (7 - 1) × 2.80%  | 21.50%         | R$ 860,00              | R$ 3.140,00        | ✅ R$ 3.140,00 + R$ 860,00 = R$ 4.000,00                  | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 7x  | Crédito Parcelado  | 7        | R$ 4.000,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (7 - 1) × 2.80%  | 21.50%         | R$ 860,00              | R$ 3.140,00        | ✅ R$ 3.140,00 + R$ 860,00 = R$ 4.000,00                  | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 7x - [Simples]() e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 8x  | Crédito Parcelado  | 8        | R$ 4.500,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (8 - 1) × 2.80%  | 24.30%         | R$ 1.093,50            | R$ 3.406,50        | ✅ R$ 3.406,50 + R$ 1.093,50 = R$ 4.500,00                | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 8x  | Crédito Parcelado  | 8        | R$ 4.500,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (8 - 1) × 2.80%  | 24.30%         | R$ 1.093,50            | R$ 3.406,50        | ✅ R$ 3.406,50 + R$ 1.093,50 = R$ 4.500,00                | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 8x - [Simples]() e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 9x  | Crédito Parcelado  | 9        | R$ 5.000,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (9 - 1) × 2.80%  | 27.10%         | R$ 1.355,00            | R$ 3.645,00        | ✅ R$ 3.645,00 + R$ 1.355,00 = R$ 5.000,00                | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 9x  | Crédito Parcelado  | 9        | R$ 5.000,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (9 - 1) × 2.80%  | 27.10%         | R$ 1.355,00            | R$ 3.645,00        | ✅ R$ 3.645,00 + R$ 1.355,00 = R$ 5.000,00                | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 9x - [Simples]() e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 10x | Crédito Parcelado  | 10       | R$ 5.500,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (10 - 1) × 2.80% | 29.90%         | R$ 1.644,50            | R$ 3.855,50        | ✅ R$ 3.855,50 + R$ 1.644,50 = R$ 5.500,00                | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 10x | Crédito Parcelado  | 10       | R$ 5.500,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (10 - 1) × 2.80% | 29.90%         | R$ 1.644,50            | R$ 3.855,50        | ✅ R$ 3.855,50 + R$ 1.644,50 = R$ 5.500,00                | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 10x - [Simples]() e [Detalhado]()  
  
| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 11x | Crédito Parcelado  | 11       | R$ 6.000,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (11 - 1) × 2.80% | 32.70%         | R$ 1.962,00            | R$ 4.038,00        | ✅ R$ 4.038,00 + R$ 1.962,00 = R$ 6.000,00                | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 11x | Crédito Parcelado  | 11       | R$ 6.000,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (11 - 1) × 2.80% | 32.70%         | R$ 1.962,00            | R$ 4.038,00        | ✅ R$ 4.038,00 + R$ 1.962,00 = R$ 6.000,00                | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 11x - [Simples]() e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa)  | 🧮 Valor Líquido | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|-------------------------|-------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 12x | Crédito Parcelado  | 12       | R$ 6.500,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (12 - 1) × 2.80% | 35.50%         | R$ 2.307,50             | R$ 4.192,50       | ✅ R$ 4.192,50 + R$ 2.307,50 = R$ 6.500,00                | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 12x | Crédito Parcelado  | 12       | R$ 6.500,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (12 - 1) × 2.80% | 35.50%         | R$ 2.307,50             | R$ 4.192,50       | ✅ R$ 4.192,50 + R$ 2.307,50 = R$ 6.500,00                | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 12x - [Simples]() e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 13x | Crédito Parcelado  | 13       | R$ 7.000,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (13 - 1) × 2.80% | 38.30%         | R$ 2.681,00            | R$ 4.319,00        | ✅ R$ 4.319,00 + R$ 2.681,00 = R$ 7.000,00                | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 13x | Crédito Parcelado  | 13       | R$ 7.000,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (13 - 1) × 2.80% | 38.30%         | R$ 2.681,00            | R$ 4.319,00        | ✅ R$ 4.319,00 + R$ 2.681,00 = R$ 7.000,00                | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 13x - [Simples]() e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 14x | Crédito Parcelado  | 14       | R$ 7.500,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (14 - 1) × 2.80% | 41.10%         | R$ 3.082,50            | R$ 4.417,50        | ✅ R$ 4.417,50 + R$ 3.082,50 = R$ 7.500,00                | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 14x | Crédito Parcelado  | 14       | R$ 7.500,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (14 - 1) × 2.80% | 41.10%         | R$ 3.082,50            | R$ 4.417,50        | ✅ R$ 4.417,50 + R$ 3.082,50 = R$ 7.500,00                | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 14x - [Simples]() e [Detalhado]()
  
| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 15x | Crédito Parcelado  | 15       | R$ 8.000,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (15 - 1) × 2.80% | 43.90%         | R$ 3.512,00            | R$ 4.488,00        | ✅ R$ 4.488,00 + R$ 3.512,00 = R$ 8.000,00                | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 15x | Crédito Parcelado  | 15       | R$ 8.000,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (15 - 1) × 2.80% | 43.90%         | R$ 3.512,00            | R$ 4.488,00        | ✅ R$ 4.488,00 + R$ 3.512,00 = R$ 8.000,00                | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 15x - [Simples]() e [Detalhado]()  
  
| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 16x | Crédito Parcelado  | 16       | R$ 8.500,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (16 - 1) × 2.80% | 46.70%         | R$ 3.969,50            | R$ 4.530,50        | ✅ R$ 4.530,50 + R$ 3.969,50 = R$ 8.500,00                | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 16x | Crédito Parcelado  | 16       | R$ 8.500,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (16 - 1) × 2.80% | 46.70%         | R$ 3.969,50            | R$ 4.530,50        | ✅ R$ 4.530,50 + R$ 3.969,50 = R$ 8.500,00                | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 16x - [Simples]() e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 17x | Crédito Parcelado  | 17       | R$ 9.000,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (17 - 1) × 2.80% | 49.50%         | R$ 4.455,00            | R$ 4.545,00        | ✅ R$ 4.545,00 + R$ 4.455,00 = R$ 9.000,00                | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 17x | Crédito Parcelado  | 17       | R$ 9.000,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (17 - 1) × 2.80% | 49.50%         | R$ 4.455,00            | R$ 4.545,00        | ✅ R$ 4.545,00 + R$ 4.455,00 = R$ 9.000,00                | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 17x - [Simples]() e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 18x | Crédito Parcelado  | 18       | R$ 9.500,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (18 - 1) × 2.80% | 52.30%         | R$ 4.968,50            | R$ 4.531,50        | ✅ R$ 4.531,50 + R$ 4.968,50 = R$ 9.500,00                | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 18x | Crédito Parcelado  | 18       | R$ 9.500,00       | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (18 - 1) × 2.80% | 52.30%         | R$ 4.968,50            | R$ 4.531,50        | ✅ R$ 4.531,50 + R$ 4.968,50 = R$ 9.500,00                | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 18x - [Simples]() e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|-----------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 19x | Crédito Parcelado  | 19       | R$ 10.000,00      | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (19 - 1) × 2.80% | 55.10%         | R$ 5.510,00            | R$ 4.490,00        | ✅ R$ 4.490,00 + R$ 5.510,00 = R$ 10.000,00               | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 19x | Crédito Parcelado  | 19       | R$ 10.000,00      | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (19 - 1) × 2.80% | 55.10%         | R$ 5.510,00            | R$ 4.490,00        | ✅ R$ 4.490,00 + R$ 5.510,00 = R$ 10.000,00               | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 19x - [Simples]() e [Detalhado]()
  
| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 20x | Crédito Parcelado  | 20       | R$ 10.500,00      | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (20 - 1) × 2.80% | 57.90%         | R$ 6.079,50            | R$ 4.420,50        | ✅ R$ 4.420,50 + R$ 6.079,50 = R$ 10.500,00               | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 20x | Crédito Parcelado  | 20       | R$ 10.500,00      | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (20 - 1) × 2.80% | 57.90%         | R$ 6.079,50            | R$ 4.420,50        | ✅ R$ 4.420,50 + R$ 6.079,50 = R$ 10.500,00               | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 20x - [Simples]() e [Detalhado]()

| Tipo               | Teste         | Modalidade         | Parcelas | Valor da Venda    | Fator Base (%) | Fator 1 (%) | Fator Adicional (%)  | Cálculo Taxa                     | Total Taxa (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido  | ✅ Verificação                                            | Diferença | Precisão |
|--------------------|---------------|--------------------|----------|-------------------|----------------|-------------|----------------------|----------------------------------|----------------|------------------------|--------------------|------------------------------------------------------------|-----------|----------|
| Dados Esperados    | Parcelado 21x | Crédito Parcelado  | 21       | R$ 11.000,00      | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (21 - 1) × 2.80% | 60.70%         | R$ 6.677,00            | R$ 4.323,00        | ✅ R$ 4.323,00 + R$ 6.677,00 = R$ 11.000,00               | R$ 0,00   | 100.00%  |
| Dados do Simulador | Parcelado 21x | Crédito Parcelado  | 21       | R$ 11.000,00      | 2.20           | 2.50        | 2.80                 | 2.20% + 2.50% + (21 - 1) × 2.80% | 60.70%         | R$ 6.677,00            | R$ 4.323,00        | ✅ R$ 4.323,00 + R$ 6.677,00 = R$ 11.000,00               | R$ 0,00   | 100.00%  |
- 🔗 Evidência do simulador_mdr-flex Crédito Parcelado 21x - [Simples]() e [Detalhado]()
  
---

## 📊 Resumo de Precisão dos Testes

| Métrica             | Resultado |
|---------------------|-----------|
| Diferença Máxima    | R$ 0,00   |
| Diferença Mínima    | R$ 0,00   |
| Precisão Média      | 100.00%   |
| Precisão Mínima     | 100.00%   |
| Precisão Máxima     | 100.00%   |

Este resumo reforça a confiabilidade dos cálculos realizados pelo **LiquiCalc**, demonstrando consistência absoluta em todas as simulações testadas.  

---

## 📝 Considerações Finais  

Os testes apresentados neste relatório têm como objetivo validar a lógica de cálculo do **LiquiCalc** em diferentes cenários operacionais, incluindo valores extremos e todas as faixas de parcelamento disponíveis com aplicação de **MDR Flex**.  

Embora os resultados demonstrem precisão total, é importante lembrar que:  

- Estes testes não substituem auditorias contábeis formais.  
- Toda nova versão do LiquiCalc deve passar por este processo de validação antes de ser disponibilizada.  
- A manutenção da confiabilidade depende da continuidade dos testes em cada atualização futura.  

Os testes de crédito parcelado com **MDR Flex** simulam transações com diferentes quantidades de parcelas (de 1x a 21x), variando também os fatores aplicados (Fator 1 e Fator 2).  

Essa abordagem garante que o **LiquiCalc** mantenha sua precisão mesmo diante da complexidade crescente das operações.

---
