# 💳 MDR Flexível — Conceito, Fórmula e Aplicação

> 📘 _Autor: Vinicius • Última atualização: agosto/2025_

## 📑 Sumário

- [🧠 O que é MDR Flexível?](#-o-que-é-mdr-flexível)
- [📐 Fórmula de Cálculo](#-fórmula-de-cálculo)
- [📊 Diferença entre Fator Base e Fator Parcela](#-diferença-entre-fator-base-e-fator-parcela)
- [💰 Cálculo do Valor Recebido pelo Associado](#-cálculo-do-valor-recebido-pelo-associado)
- [💸 Fórmula de Cálculo da Taxa Cobrada](#-fórmula-de-cálculo-da-taxa-cobrada)
- [🧩 Composição da MDR](#-composição-da-mdr)
- [📊 Aplicações no LiquiCalc](#-aplicações-no-liquicalc)
- [📌 Contexto de Aplicação](#-Contexto-de-Aplicação)
- [📉 Impacto no Negócio](#-impacto-no-negócio)
- [⚖️ Alternativas e Redução](#️-alternativas-e-redução)
- [📎 Observações Importantes](#-observações-importantes)
- [🔗 Referências](#-referências)

---

## 🧠 O que é MDR Flexível?
O **MDR Flexível** é uma taxa de desconto aplicada sobre vendas com cartão, utilizada quando o lojista opta por **receber antecipadamente** (geralmente em D+2). Diferente de uma taxa fixa, o MDR Flexível **varia conforme o número de parcelas**, sendo calculado de forma **aditiva** com base em três componentes:

- **Fator Base:** percentual definido pela faixa de parcelamento.  
- **Fator da 1ª Parcela:** valor fixo aplicado a todas as vendas.  
- **Fator Parcela Adicional:** valor aplicado a cada parcela além da primeira.  

📌 **Exemplo:** Venda de R$ 5.000,00 em 6 parcelas:  
- Fator Base: 2,18%  
- 1ª Parcela: 1,54%  
- 5 parcelas adicionais × 1,99% = 9,95%  

```plaintext
MDR total = 2,18% + 1,54% + 9,95% = 13,67%  
Valor recebido pelo lojista: R$ 4.316,50
```
---

## 📐 Fórmula de Cálculo

A fórmula principal da MDR Flexível é:

```plaintext
MDR_flex = Fator Base + Fator 1ª Parcela + (Parcelas − 1) × Fator Parcela Adicional
```

Onde:

- Fator Base: percentual definido pela faixa de parcelamento.
- Fator da 1ª Parcela: valor fixo aplicado a todas as vendas.
- Fator Parcela Adicional: valor aplicado a cada parcela além da primeira. 

---

## 📊 Diferença entre Fator Base e Fator Parcela

| Fator                   | Descrição                                  | Exemplos de Aplicação               |
|-------------------------|--------------------------------------------|-------------------------------------|
| Fator Base              | Percentual fixo conforme faixa de parcelas | 2,18% para vendas em até 6 parcelas |
| Fator 1ª Parcela        | Valor fixo aplicado a todas as operações   | 1,54%                               |
| Fator Parcela Adicional | Valor por parcela extra (acima da 1ª)      | 1,99% × (parcelas − 1)              |

🔍 A soma desses fatores gera a taxa final de MDR Flex aplicada à operação.  

---

## 💰 Cálculo do Valor Recebido pelo Associado

Antes de aplicar a taxa, é importante saber quanto o associado irá efetivamente receber:

```plaintext
Valor Recebido = Receita Bruta − (Receita Bruta × MDR_flex)
```

📌 Exemplos:

| Receita Bruta | Fator Base | Fator 1ª Parcela | Fator Parcela Adicional | Parcelas | Cálculo do MDR                        | MDR (%) | Taxa Cobrada | Valor Recebido |
| ------------- | ---------- | ---------------- | ----------------------- | -------- | ------------------------------------- | ------- | ------------ | -------------- |
| R$ 100.000    | 1,0%       | 0,5%             | 0,3%                    | 4        | 0,010 + 0,005 + (4−1)×0,003 = 0,024   | 2,4%    | R$ 2.400     | R$ 97.600      |
| R$ 50.000     | 0,8%       | 0,4%             | 0,25%                   | 6        | 0,008 + 0,004 + (6−1)×0,0025 = 0,0245 | 2,45%   | R$ 1.225     | R$ 48.775      |
| R$ 200.000    | 1,2%       | 0,6%             | 0,35%                   | 3        | 0,012 + 0,006 + (3−1)×0,0035 = 0,025  | 2,5%    | R$ 5.000     | R$ 195.000     |

---

## 💸 Fórmula de Cálculo da Taxa Cobrada

A taxa efetiva cobrada sobre a receita bruta é:

```plaintext
MDR_flex = Fator Base + Fator 1ª Parcela + (Parcelas − 1) × Fator Parcela Adicional
```

Esse valor representa o montante descontado da operação, que será retido pela adquirente ou instituição financeira.

---

## 🧩 Composição da MDR

A MDR Flexível pode ser composta por:

| Componente              | Origem do Fator        |Exemplos de Influência                  |
|-------------------------|------------------------|----------------------------------------|
| Fator Base              | Faixa de parcelamento  | 1x, 2–6x, 7–12x                        |
| Fator 1ª Parcela        | Política da adquirente | Aplicado a todas as vendas             |
| Fator Parcela Adicional | Custo de antecipação   | Parcelas extras aumentam risco e custo |

💡 Essa composição permite calibrar a taxa conforme **número de parcelas** e **modelo de liquidação**.  

---

## 📌 Contexto de Aplicação

O MDR Flexível é utilizado exclusivamente quando o lojista opta por receber suas vendas com liquidação automática em D+2. 
Essa modalidade não permite a contratação de antecipações adicionais (automáticas ou manuais), pois o modelo já considera o recebimento antecipado como padrão. 

### ✅ Quando o MDR Flexível é aplicável 
- O lojista contratou MDR Flex com liquidação em D+2.
- A taxa é calculada com base nos fatores definidos (Fator 1 e Fator 2).
- O valor líquido é recebido em até dois dias úteis após a venda.

### ❌ Quando o MDR Flexível não é aplicável
- Quando o lojista deseja receber conforme a agenda financeira (D+30, D+60...).
- Quando o lojista utiliza antecipação automática com datas como D+1, D+5, D+15 etc.
- Quando o lojista solicita antecipação manual de valores específicos.
  
---

## 📊 Aplicações no LiquiCalc

O simulador LiquiCalc permite:

- Inserir receita bruta  
- Definir Fator 1 e Fator 2  
- Calcular MDR Flexível  
- Obter valor líquido com precisão  

🎯 Ideal para:

- Simulações com múltiplos cenários  
- Avaliação de impacto por prazo e volume  
- Estratégias de liquidez personalizadas  

---

## 📉 Impacto no Negócio

A MDR Flexível afeta diretamente:

- 💰 Margem financeira da operação  
- 📉 Rentabilidade em antecipações  
- 📊 Planejamento de fluxo de caixa  

🔍 Empresas com alta variabilidade de prazo ou risco se beneficiam de um modelo mais ajustável.

---

## ⚖️ Alternativas e Redução

Formas de reduzir o impacto da MDR Flexível:

- 🤝 Negociar prazos menores com clientes  
- 📈 Melhorar perfil de risco com garantias  
- 🧠 Usar modelos preditivos para calibrar fatores  
- 🔄 Aplicar lógica condicional para ajustar Fator 2 conforme prazo

---

## 📎 Observações Importantes

- A MDR Flexível é aplicada sobre o valor bruto  
- Pode ser integrada a sistemas de gestão e simuladores  
- Não substitui a análise de risco tradicional, mas a complementa  
- Requer calibração com dados históricos e benchmarks de mercado  

---

## 🔗 Referências

- [Modelagem de Risco Financeiro – COPPEAD/UFRJ](https://pantheon.ufrj.br/bitstream/11422/1449/1/429.pdf)  
- [Estatística Fácil – O que é Modelagem de Risco](https://estatisticafacil.org/glossario/o-que-e-modelagem-de-risco-como-funciona-e-suas-aplicacoes/)  
- [Deps – Como Fazer Modelagem de Risco](https://deps.com.br/o-que-e-e-como-fazer-uma-modelagem-de-risco-entenda/)  
- [Concil – Taxas Flex da Rede](https://atendimento.concil.com.br/kb/pt-br/article/488121/como-conferir-as-taxas-flex-da-rede)  
- [Blog da Rede – Antecipação Avulsa vs. Flex](https://www.userede.com.br/novo/blog/saiba-a-diferenca-entre-a-antecipacao-avulsa-e-o-flex/)  
- [Serasa Experian – Pesquisa sobre Antecipação de Recebíveis](https://www.serasaexperian.com.br/sala-de-imprensa/pmes/4-em-cada-10-mpmes-preferem-antecipacao-de-recebiveis-como-modalidade-de-credito-aponta-pesquisa-da-serasa-experian/) 
- [Ouribank – Antecipação em Cenário de Juros Altos](https://www.ouribank.com/conteudo/blog/antecipacao-de-recebiveis-como-aproveitar-um-cenario-de-juros-elevado)

---




# 💳 MDR Flexível — Conceito, Fórmula e Aplicação
📘 **Autor:** Vinicius • Última atualização: setembro/2025

---

## 📑 Sumário
- 🧠 O que é MDR Flexível?  
- 📐 Fórmula de Cálculo  
- 📊 Diferença entre Fator Base e Fator Parcela  
- 💰 Cálculo do Valor Recebido pelo Associado  
- 💸 Fórmula de Cálculo da Taxa Cobrada  
- 🧩 Composição da MDR  
- 📊 Aplicações no LiquiCalc  
- 📌 Contexto de Aplicação  
- 📉 Impacto no Negócio  
- ⚖️ Alternativas e Redução  
- 📎 Observações Importantes  
- 🔗 Referências  

---

## 🧠 O que é MDR Flexível?
O **MDR Flexível** é uma taxa de desconto aplicada sobre vendas com cartão, utilizada quando o lojista opta por **receber antecipadamente** (geralmente em D+2). Diferente de uma taxa fixa, o MDR Flexível **varia conforme o número de parcelas**, sendo calculado de forma **aditiva** com base em três componentes:

- **Fator Base:** percentual definido pela faixa de parcelamento.  
- **Fator da 1ª Parcela:** valor fixo aplicado a todas as vendas.  
- **Fator Parcela Adicional:** valor aplicado a cada parcela além da primeira.  

📌 **Exemplo:**  
Venda de R$ 5.000,00 em 6 parcelas:  
- Fator Base: 2,18%  
- 1ª Parcela: 1,54%  
- 5 parcelas adicionais × 1,99% = 9,95%  

**MDR total = 2,18% + 1,54% + 9,95% = 13,67%**  
Valor recebido pelo lojista: **R$ 4.316,50**  

---

## 📐 Fórmula de Cálculo
**MDR_total (%) = Fator Base + Fator 1ª Parcela + (Parcelas − 1) × Fator Parcela Adicional**

**Detalhamento dos fatores:**  
- **Fator Base:**  
  - 1 parcela → 2,10%  
  - 2–6 parcelas → 2,18%  
  - 7–12 parcelas → 3,22%  
- **Fator 1ª Parcela:** 1,54%  
- **Fator Parcela Adicional:** 1,99% por parcela extra  

---

## 📊 Diferença entre Fator Base e Fator Parcela

| Fator | Descrição | Exemplos de Aplicação |
|-------|-----------|----------------------|
| Fator Base | Percentual fixo conforme faixa de parcelas | 2,18% para vendas em até 6 parcelas |
| Fator 1ª Parcela | Valor fixo aplicado a todas as operações | 1,54% |
| Fator Parcela Adicional | Valor por parcela extra (acima da 1ª) | 1,99% × (parcelas − 1) |

🔍 A soma desses fatores gera a taxa final de MDR aplicada à operação.  

---

## 💰 Cálculo do Valor Recebido pelo Associado
**Valor Recebido = Receita Bruta − (Receita Bruta × MDR_total)**

📌 **Exemplos:**

| Receita Bruta | Parcelas | MDR (%) | Taxa Cobrada | Valor Recebido |
|---------------|----------|---------|--------------|----------------|
| R$ 5.000,00 | 1 | 3,64% | R$ 182,00 | R$ 4.818,00 |
| R$ 5.000,00 | 2 | 5,71% | R$ 285,50 | R$ 4.714,50 |
| R$ 5.000,00 | 6 | 13,67% | R$ 683,50 | R$ 4.316,50 |
| R$ 5.000,00 | 12 | 26,65% | R$ 1.332,50 | R$ 3.667,50 |

---

## 💸 Fórmula de Cálculo da Taxa Cobrada
**Taxa Cobrada = Receita Bruta × MDR_total**

Este valor representa o montante descontado da operação, retido pela adquirente ou instituição financeira.  

---

## 🧩 Composição da MDR

| Componente | Origem do Fator | Exemplos de Influência |
|------------|----------------|-----------------------|
| Fator Base | Faixa de parcelamento | 1x, 2–6x, 7–12x |
| Fator 1ª Parcela | Política da adquirente | Aplicado a todas as vendas |
| Fator Parcela Adicional | Custo de antecipação | Parcelas extras aumentam risco e custo |

💡 Essa composição permite calibrar a taxa conforme **número de parcelas** e **modelo de liquidação**.  

---

## 📌 Contexto de Aplicação
O MDR Flexível é utilizado **exclusivamente** quando o lojista opta por liquidação automática em D+2, sem antecipações adicionais.  

✅ **Quando aplicável:**  
- Liquidação em D+2  
- Taxa calculada com base nos fatores definidos  
- Valor líquido recebido em até dois dias úteis  

❌ **Quando não aplicável:**  
- Liquidação conforme agenda financeira (D+30, D+60…)  
- Antecipações automáticas com datas como D+1, D+5 etc.  
- Antecipações manuais de valores específicos  

---

## 📊 Aplicações no LiquiCalc
O simulador LiquiCalc permite:  
- Inserir receita bruta  
- Definir número de parcelas  
- Calcular MDR Flexível  
- Obter valor líquido com precisão  

🎯 **Ideal para:**  
- Simulações com múltiplos cenários  
- Avaliação de impacto por prazo e volume  
- Estratégias de liquidez personalizadas  

---

## 📉 Impacto no Negócio
O MDR Flexível afeta diretamente:  
- 💰 Margem financeira da operação  
- 📉 Rentabilidade em vendas parceladas  
- 📊 Planejamento de fluxo de caixa  

🔍 Empresas com alta variabilidade de parcelamento se beneficiam de um modelo **ajustável e transparente**.  

---

## ⚖️ Alternativas e Redução
Formas de reduzir o impacto da MDR Flexível:  
- 🤝 Incentivar menos parcelas com descontos à vista  
- 📈 Negociar bases com adquirente conforme volume  
- 🧠 Usar simuladores para orientar decisões comerciais  
- 🔄 Ajustar políticas de parcelamento conforme ticket médio  

---

## 📎 Observações Importantes
- Aplicada sobre o valor bruto da venda  
- Pode ser integrada a sistemas de gestão e simuladores  
- Requer atualização periódica dos percentuais utilizados  
- Transparência na comunicação com o cliente é essencial  

---

## 🔗 Referências
- Modelagem de Risco Financeiro – COPPEAD/UFRJ  
- Estatística Fácil – O que é Modelagem de Risco  
- Concil – Taxas Flex da Rede  
- Blog da Rede – Antecipação Avulsa vs. Flex  
- Serasa Experian – Pesquisa sobre Antecipação de Recebíveis  
- Ouribank – Antecipação em Cenário de Juros Altos

