# 💳 MDR Flexível — Conceito, Fórmula e Aplicação

> 📘 _Autor: Vinicius • Última atualização: setembro/2025_

## 📑 Sumário

- [🧠 O que é MDR Flexível?](#-o-que-é-mdr-flexível)
- [🧩 Composição da MDR](#-composição-da-mdr)
- [📐 Fórmula de Cálculo](#-fórmula-de-cálculo)
- [📊 Diferença entre Fator Base e Fator Parcela](#-diferença-entre-fator-base-e-fator-parcela)
- [💰 Cálculo do Valor Recebido pelo Associado](#-cálculo-do-valor-recebido-pelo-associado)
- [💸 Fórmula de Cálculo da Taxa Cobrada](#-fórmula-de-cálculo-da-taxa-cobrada)
- [📌 Contexto de Aplicação](#-Contexto-de-Aplicação)
- [📊 Aplicações no LiquiCalc](#-aplicações-no-liquicalc)
- [🧪 Simulador de MDR Flex](#-simulador-de-mdr-flex)
- [📉 Impacto no Negócio](#-impacto-no-negócio)
- [⚖️ Alternativas e Redução](#️-alternativas-e-redução)
- [📎 Observações Importantes](#-observações-importantes)
- [✅ Testes de Validação](#-testes-de-validação)
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
- 5 Parcelas restantes (6 − 1): 5 × 1,99% = 9,95% 
> MDR Flexível considera a 1ª parcela separadamente, pois ela possui um fator fixo próprio. As demais parcelas (a partir da 2ª) recebem o Fator Parcela Adicional, conforme definido na fórmula: (Parcelas − 1) × Fator Parcela Adicional.

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

| Fator                   | Descrição                                      | Exemplos de Aplicação                                         |
|-------------------------|------------------------------------------------|---------------------------------------------------------------|
| Fator Base              | Percentual definido pela faixa de parcelamento | 2,18% para vendas em até 6 parcelas e 2,50% de 7 a 12 parcelas|
| Fator 1ª Parcela        | Valor fixo aplicado a todas as operações       | 1,54%                                                         |
| Fator Parcela Adicional | Valor por parcela extra (acima da 1ª)          | 1,99% × (parcelas − 1)                                        |

🔍 A soma desses fatores gera a taxa final de MDR Flex aplicada à operação.  

---

## 💰 Cálculo do Valor Recebido pelo Associado

Antes de aplicar a taxa, é importante saber quanto o associado irá efetivamente receber:

```plaintext
Valor Recebido = Receita Bruta − (Receita Bruta × MDR_flex)
```

📌 Exemplos:

| Receita Bruta    | Fator Base (%)  | Fator 1ª Parcela (%)     | Fator Parcela Adicional (%) | Parcelas | Cálculo do MDR                           | Total Taxa (%) | Taxa Cobrada     | Valor Recebido    |
|------------------|-----------------|--------------------------|-----------------------------|----------|------------------------------------------|----------------|------------------|-------------------|
| R$ 100.000,00    | 1.00            | 0.50                     | 0.30                        | 4        | 0,010 + 0,005 + (4 − 1) ×0,003 = 0,024   | 2.40%          | R$ 2.400,00      | R$ 97.600,00      |
| R$ 50.000,00     | 0.80            | 0.40                     | 0.25                        | 6        | 0,008 + 0,004 + (6 − 1) ×0,0025 = 0,0245 | 2.45%          | R$ 1.225,00      | R$ 48.775,00      |
| R$ 200.000,00    | 1.20            | 0.60                     | 0.35                        | 3        | 0,012 + 0,006 + (3 − 1) ×0,0035 = 0,025  | 2.50%          | R$ 5.000,00      | R$ 195.000,00     |

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
- A taxa é calculada com base nos fatores definidos (Fator Base, Fator 1 e Fator 2).
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

## ✅ **Testes de Validação**
A lógica de cálculo do modelo **MDR Flexível** foi submetida a uma bateria de testes técnicos, com o objetivo de comprovar sua consistência matemática e operacional em diferentes ambientes. Assim como no MDR Padrão, os testes foram documentados e organizados em quatro frentes complementares:

* **Validação Conceitual**: Revisão teórica dos fundamentos do MDR Flex, garantindo que a fórmula principal — *Fator Base + Fator 1ª Parcela + (Parcelas − 1) × Fator Parcela Adicional* — esteja alinhada às regras contratuais de adquirentes e às práticas de mercado.
* **Validação em Excel**: Simulações em planilhas com diferentes valores brutos, faixas de parcelamento e combinações de fatores. Essa etapa comprovou a precisão do cálculo do valor líquido e da taxa cobrada.
* **Validação via Script .BAT**: Implementação do modelo em ambiente local, com automação de cenários de 1x até 21x parcelas, incluindo variações extremas de receita (mínima e máxima).
* **Validação na Versão Web (LiquiCalc)**: Testes interativos dentro da plataforma LiquiCalc, avaliando não só a exatidão matemática, mas também a usabilidade e a performance em consultas simultâneas.

Esses testes contemplaram cenários variados, como:

* Parcelamentos curtos (1x–3x), médios (4x–6x) e longos (7x–21x);
* Diferença entre Fator Base, 1ª Parcela e Parcela Adicional;
* Simulações de receita em escalas diferentes (de R$ 100 até R$ 1.000.000).

📊 Os resultados obtidos confirmam que o modelo MDR Flexível mantém consistência matemática em todos os ambientes testados e representa fielmente a estrutura contratual de cálculo, consolidando-se como referência oficial para implementação no LiquiCalc.

Cada etapa foi registrada em arquivos técnicos específicos, que servem como base para auditoria, manutenção e futuras evoluções do sistema:

- 🔗 `teste_conceito_mdr-flex_1.0.md`
- 🔗 `teste_calculo_mdr-flex_2.0.md`
- 🔗 `teste_calculo_mdr-flex_3.0.md`
- 🔗 `teste_calculo_mdr-flex_4.0.md`

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
