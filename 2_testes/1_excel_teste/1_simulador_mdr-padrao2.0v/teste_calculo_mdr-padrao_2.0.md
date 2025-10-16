

### 🧮 Validação do Simulador Excel – MDR Padrão | Tabela 1

| Tipo               | Teste                  | Modalidade         | Valor da Venda   | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|------------------------|---------------------|------------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Valor Mínimo Débito    | Débito              | R$ 0,02          | 50.00   | R$ 0,02 × 50% = R$ 0,01            | R$ 0,01                       | ✅ R$ 0,01 + 0,01 = R$ 0,02                        | R$ 0,00   | 100.00%    |
| Dados do Simulador | Valor Mínimo Débito    | Débito              | R$ 0,02          | 50.00   | R$ 0,02 × 50% = R$ 0,01            | R$ 0,01                       | ✅ R$ 0,01 + 0,01 = R$ 0,02                        | R$ 0,00   | 100.00%    |
🔗 Evidência do simulador_mdr-padrao Valor Mínimo Débito

| Tipo               | Teste                  | Modalidade         | Valor da Venda   | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                     | Diferença | Precisão   |
|--------------------|------------------------|---------------------|------------------|---------|------------------------------------|-------------------------------|----------------------------------------------------|-----------|------------|
| Dados esperados    | Valor Mínimo Crédito   | Crédito à Vista     | R$ 0,02          | 50.00   | R$ 0,02 × 50% = R$ 0,01            | R$ 0,01                       | ✅ R$ 0,01 + 0,01 = R$ 0,02                        | R$ 0,00   | 100.00%    |
| Dados do Simulador | Valor Mínimo Crédito   | Crédito à Vista     | R$ 0,02          | 50.00   | R$ 0,02 × 50% = R$ 0,01            | R$ 0,01                       | ✅ R$ 0,01 + 0,01 = R$ 0,02                        | R$ 0,00   | 100.00%    |
🔗 Evidência do simulador_mdr-padrao Valor Mínimo Crédito

| Tipo               | Teste                  | Modalidade         | Valor da Venda       | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                             | Diferença | Precisão   |
|--------------------|------------------------|---------------------|----------------------|---------|------------------------------------|-------------------------------|------------------------------------------------------------|-----------|------------|
| Dados esperados    | Valor Máximo Débito    | Débito              | R$ 10.000.000,00     | 1.75    | R$ 10.000.000 × 1.75% = R$ 175.000 | R$ 9.825.000,00               | ✅ R$ 9.825.000,00 + R$ 175.000 = R$ 10.000.000,00          | R$ 0,00   | 100.00%    |
| Dados do Simulador | Valor Máximo Débito    | Débito              | R$ 10.000.000,00     | 1.75    | R$ 10.000.000 × 1.75% = R$ 175.000 | R$ 9.825.000,00               | ✅ R$ 9.825.000,00 + R$ 175.000 = R$ 10.000.000,00          | R$ 0,00   | 100.00%    |
🔗 Evidência do simulador_mdr-padrao Valor Máximo Débito

| Tipo               | Teste                  | Modalidade         | Valor da Venda       | MDR (%) | 🧮 Valor Retido (Taxa)             | 🧮 Valor Líquido             | ✅ Verificação                                             | Diferença | Precisão   |
|--------------------|------------------------|---------------------|----------------------|---------|------------------------------------|-------------------------------|------------------------------------------------------------|-----------|------------|
| Dados esperados    | Valor Máximo Crédito   | Crédito Parcelado   | R$ 10.000.000,00     | 1.75    | R$ 10.000.000 × 1.75% = R$ 175.000 | R$ 9.825.000,00               | ✅ R$ 9.825.000,00 + R$ 175.000 = R$ 10.000.000,00          | R$ 0,00   | 100.00%    |
| Dados do Simulador | Valor Máximo Crédito   | Crédito Parcelado   | R$ 10.000.000,00     | 1.75    | R$ 10.000.000 × 1.75% = R$ 175.000 | R$ 9.825.000,00               | ✅ R$ 9.825.000,00 + R$ 175.000 = R$ 10.000.000,00          | R$ 0,00   | 100.00%    |
🔗 Evidência do simulador_mdr-padrao Valor Máximo Crédito

---

Se quiser, posso seguir com os testes de parcelamento (1x a 21x) nesse mesmo formato. Me avisa se quer que eu monte os próximos!
