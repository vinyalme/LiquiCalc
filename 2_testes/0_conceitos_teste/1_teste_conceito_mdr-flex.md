# Relatórios de Teste – MDR Flex | Conceito

Este documento apresenta os testes realizados para validação dos cálculos do sistema **LiquiCalc**, com foco em garantir **precisão matemática**, **consistência lógica** e **confiabilidade técnica**.  

Os testes foram divididos em dois grupos principais:

1. **Testes de Valor Mínimo e Máximo** – para verificar os limites operacionais do sistema.  
2. **Testes de Crédito Parcelado com Fator Flexível** – cobrindo todas as faixas de parcelamento de 1x a 21x, com variações de valores e aplicação dos fatores MDR Flex.  

> ⚠️ **Importante**: Todos os cálculos apresentados aqui seguem rigorosamente a lógica da modalidade **MDR Flex**, conforme especificado no documento técnico `0mdr-flex.md`.  
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

Os testes de crédito parcelado com **MDR Flex** simulam transações com diferentes quantidades de parcelas (de 1x a 21x), variando também os fatores aplicados (Fator 1 e Fator 2).  

Essa abordagem garante que o **LiquiCalc** mantenha sua precisão mesmo diante da complexidade crescente das operações.

