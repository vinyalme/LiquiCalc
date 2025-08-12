# 💳 MDR Padrão — Conceito, Fórmula e Aplicação

> 📘 _Autor: Vinicius • Última atualização: agosto/2025_

## 📑 Sumário

- [🧠 O que é MDR?](#-o-que-é-mdr)
- [📐 Fórmula de Cálculo](#-fórmula-de-cálculo)
- [🧩 Composição da MDR](#-composição-da-mdr)
- [📊 Aplicações no LiquiCalc](#-aplicações-no-liquicalc)
- [📉 Impacto no Negócio](#-impacto-no-negócio)
- [⚖️ Alternativas e Redução](#️-alternativas-e-redução)
- [📎 Observações Importantes](#-observações-importantes)
- [🔗 Referências](#-referências)

---

## 🧠 O que é MDR?

MDR (Merchant Discount Rate), ou Taxa de Desconto do Comerciante, é a tarifa cobrada pelas adquirentes — como Cielo, Rede, Stone, InfinitePay — sobre cada transação feita com cartão de crédito ou débito. Essa taxa representa o custo do serviço de processamento do pagamento e é descontada automaticamente do valor da venda antes do repasse ao lojista.

Ela remunera três agentes principais:

- 🏦 A adquirente (maquininha)  
- 🏁 A bandeira do cartão (Visa, Mastercard, Elo, Cabal, Amex, etc.)  
- 🏛️ O banco emissor do cliente  

📌 Exemplo: numa venda de R$ 1.000 com MDR de 3%, o lojista recebe R$ 970.

A MDR pode variar conforme:

- A bandeira do cartão  
- A modalidade da venda (Débito, Crédito à Vista, Crédito Parcelado, Pré-aprovação)  
- O prazo de recebimento (D+1, D+2, D+15, D+30 e etc.)  
- O volume de vendas e a negociação com a adquirente  

---

## 📐 Fórmula de Cálculo

A fórmula básica para calcular o valor líquido é:

```plaintext
Valor Líquido = Valor Bruto × (1 - MDR)
```

Onde:

- **Valor Bruto** = valor total da venda  
- **MDR** = taxa percentual aplicada pela adquirente (em decimal)

📌 Exemplo prático: Venda de R$ 500,00 no crédito à vista com MDR de 2,8%:

```plaintext
Valor Líquido = 500 × (1 - 0,028) = 500 × 0,972 = R$ 486,00
```

---

## 🧩 Composição da MDR

A MDR não é uma taxa única, mas sim a soma de três componentes:

| Componente               | Descrição                                                                 |
|--------------------------|---------------------------------------------------------------------------|
| 🏦 Tarifa de Intercâmbio | Parte destinada ao banco emissor do cartão                                |
| 💳 Fee da Bandeira        | Remuneração da bandeira pela infraestrutura de pagamentos                 |
| 🧾 Net MDR                | Parcela da adquirente (maquininha), incluindo impostos como ISS           |

🔍 Essa composição pode variar conforme:

- Tipo de cartão (nacional, internacional, corporativo)  
- Bandeira (Visa, Mastercard, Elo, Cabal, Amex, etc.) 
- Segmento do lojista (MCC)  
- Tipo de venda (presencial ou online)  

💡 Em geral, cartões corporativos e internacionais possuem taxas maiores.

---

## 📊 Aplicações no LiquiCalc

O simulador de MDR padrão do LiquiCalc permite:

- Inserir o valor da venda  
- Escolher a modalidade (débito, crédito à vista, crédito parcelado)  
- Definir a taxa MDR  
- Obter o valor líquido com precisão  

🎯 Essa versão é ideal para simulações diretas, sem antecipações ou flexibilizações. É útil para:

- Comparar adquirentes  
- Entender o impacto das taxas  
- Planejar o fluxo de caixa  

---

## 📉 Impacto no Negócio

A MDR pode variar de **0,5% a 5%**, dependendo da adquirente, bandeira e negociação. Em empresas com margens apertadas, esse custo pode comprometer a rentabilidade.

📊 Segundo especialistas, o Brasil possui uma das MDRs mais altas do mundo, especialmente em vendas parceladas.

🚫 Além disso, o lojista nem sempre tem visibilidade clara sobre a composição da taxa, o que dificulta a comparação entre maquininhas.

---

## ⚖️ Alternativas e Redução

Existem formas de reduzir ou contornar o impacto da MDR:

- 🤝 Negociar diretamente com a adquirente, especialmente se o volume de vendas for alto  
- 💸 Repassar a taxa ao cliente (permitido pela [Lei 13.455/2017](https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2017/lei/L13455.htm))  
- 📲 Utilizar meios de pagamento alternativos, como PIX, QR Code ou carteiras digitais  
- 🧪 Optar por fintechs com modelos de MDR zero ou MDR flexível, conforme o prazo de recebimento  

---

## 📎 Observações Importantes

- A MDR é sempre aplicada sobre o valor bruto da venda  
- Em vendas parceladas, a taxa tende a ser maior  
- O prazo de recebimento (D+1, D+2, D+15, D+30 e etc.) não altera o MDR padrão, mas impacta o fluxo de caixa  
- A taxa pode ser:
  - 📦 Fixa (modelo Blended)  
  - 📈 Variável (modelo Interchange++)  

---

## 🔗 Referências

- [Asaas – O que é MDR](https://blog.asaas.com/o-que-e-mdr/)  
- [Equals – Taxa MDR: entenda como funciona](https://equals.com.br/blog/taxa-mdr/)  
- [iDinheiro – O que é MDR e como funciona](https://www.idinheiro.com.br/financas-pessoais/o-que-e-mdr/)  
- [InfinitePay – O que é taxa MDR](https://blog.infinitepay.io/o-que-e-taxa-mdr/)  
- [Shield Bank – Como a MDR impacta seu negócio e como se livrar dela](https://shieldbank.com.br/blog/mdr-taxas-cartao/)  
