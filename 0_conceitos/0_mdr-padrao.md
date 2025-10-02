# 💳 MDR Padrão — Conceito, Fórmula e Aplicação

> 📘 _Autor: Vinicius • Última atualização: outubro/2025_

## 📑 Sumário

- [🧠 O que é MDR?](#-o-que-é-mdr)
- [🧩 Composição da MDR](#-composição-da-mdr)
- [📐 Fórmula de Cálculo](#-fórmula-de-cálculo)
- [💸 Fórmula de Cálculo da Taxa Cobrada](#-fórmula-de-cálculo-da-taxa-cobrada)
- [📌 Contexto de Aplicação](#-Contexto-de-Aplicação)
- [📊 Aplicações no LiquiCalc](#-aplicações-no-liquicalc)
- [🧪 Simulador de MDR Padrão](#-simulador-de-mdr-padrão) Simulador de MDR Padrão
- [📉 Impacto no Negócio](#-impacto-no-negócio)
- [⚖️ Alternativas e Redução](#️-alternativas-e-redução)
- [📎 Observações Importantes](#-observações-importantes)
- [✅ Testes de Validação](#-testes-de-validação)
- [🔗 Referências](#-referências)

---

## 🧠 O que é MDR?

MDR (Merchant Discount Rate), ou Taxa de Desconto do Comerciante, é a tarifa cobrada pelas adquirentes — como Cielo, Rede, Stone, InfinitePay, Clover e etc — sobre cada transação feita com cartão de crédito ou débito. Essa taxa representa o custo do serviço de processamento do pagamento e é descontada automaticamente do valor da venda antes do repasse ao lojista.

Ela remunera três agentes principais:

- 🏦 A adquirente (maquininha)  
- 🏁 A bandeira do cartão (Visa, Mastercard, Elo, Cabal, Amex, etc.)  
- 🏛️ O banco emissor do cliente  

📌 Exemplo: em uma venda de R$ 1.000 com MDR de 3%, o lojista recebe R$ 970, ou seja, paga R$ 30,00 em taxas. 

> 💡 **Importante**: A taxa MDR é sempre aplicada sobre o **valor bruto da venda**, independentemente de ser **à vista ou parcelado**. Ou seja, mesmo que o cliente parcele em várias vezes, a taxa incide sobre o valor total da compra

A MDR pode variar conforme:

- A bandeira do cartão (Visa, Mastercard, Elo, Cabal, Amex, etc.)
- A modalidade da venda (Débito, Crédito à Vista, Crédito Parcelado, Pré-autorização, Voucher, Qr Code {Carteira Digital}, Vendas Digitadas)
- O prazo de recebimento (D+1, D+2, D+10, D+15, D+30 e etc.)  
- O volume de vendas e a negociação com a adquirente  

---

## 🧩 Composição da MDR

A MDR não é uma taxa única, mas sim a soma de três componentes:

| Componente                 | Descrição                                                                 |
|----------------------------|---------------------------------------------------------------------------|
| 🏦 Tarifa de Intercâmbio  | Parte destinada ao banco emissor do cartão                                |
| 💳 Fee da Bandeira        | Remuneração da bandeira pela infraestrutura de pagamentos                 |
| 🧾 Net MDR                | Parcela da adquirente (maquininha), incluindo impostos como ISS           |

🔍 Essa composição pode variar conforme:

- Tipo de cartão (Nacional, Internacional, Corporativo / Empresarial, Pré-pago, Débito, Crédito, Universitário / Jovem, Black / Infinite / Platinum, Cashback, Cartão de loja / Private Label, Virtual, Contactless (Aproximação), Cartão de benefícios e Cartão BNDES)
- Bandeira (Visa, Mastercard, Elo, Cabal, Amex, etc.) 
- Segmento do lojista (MCC, CNAE)  
- Tipo de venda (Presencial ou Online)

💡 Em geral, cartões corporativos, internacionais e Voucher possuem taxas maiores.

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

🔎 Ou seja, o empreendedor receberá **R$ 486,00 líquidos** pela venda.

---

## 💸 Fórmula de Cálculo da Taxa Cobrada
A fórmula básica para calcular o valor da taxa cobrada em cima da venda é:
```plaintext
Taxa Cobrada = Valor Bruto × MDR
```
Onde:  
- **Valor Bruto** = valor total da venda  
- **MDR** = taxa percentual aplicada pela adquirente (em decimal)

📌 Exemplo prático: Venda de R$ 500,00 no crédito à vista com MDR de 2,8%:  

```plaintext
Taxa Cobrada = 500 × 0,028 = R$ 14,00
```

🔎 Ou seja, o empreendedor pagará **R$ 14,00** de taxa sobre essa venda.

---

## 📌 Contexto de Aplicação

O **MDR Padrão** é aplicável apenas quando o lojista **não utiliza MDR Flex**. Dentro desse contexto, ele pode operar em três cenários distintos: 

### ✅ 1. Sem Antecipação 
- O lojista recebe conforme a **agenda financeira** da adquirente.
- Exemplo: Crédito à vista → D+30 corridos (liquidação em dia útil).

### ✅ 2. Com Antecipação Automática
- O lojista contratou antecipação com recebimento em D+1, D+2, D+5, D+10, D+15 ou D+30.
- A taxa de antecipação é aplicada **sobre o valor líquido** (após MDR Padrão).
- A liquidação ocorre sempre em **dias úteis**.

### ✅ 3. Com Antecipação Manual 
- O lojista solicita antecipação pontual de um valor específico.
- Pode ser usada em vendas de alto valor ou em momentos de necessidade de caixa.
- A taxa é proporcional às parcelas antecipadas.

### ❌ Quando o MDR Padrão não é aplicável 
- Quando o lojista utiliza **MDR Flex**, que é uma modalidade exclusiva com recebimento automático em D+2.
- Nesse caso, o MDR Padrão é substituído por uma estrutura de taxa única e não pode coexistir.
  
---

## 📊 Aplicações no LiquiCalc

O simulador de MDR padrão do LiquiCalc permite:

- Inserir o valor da venda  
- Escolher a modalidade (Débito, Crédito à Vista, Crédito Parcelado, Pré-autorização)
- Definir a taxa MDR  
- Obter o valor líquido com precisão  

🎯 Essa versão é ideal para simulações diretas, sem antecipações ou flexibilizações. É útil para:

- Comparar adquirentes  
- Entender o impacto das taxas  
- Planejar o fluxo de caixa  

---

## 🧪 Simulador de MDR Padrão

O modelo MDR Padrão foi implementado em três versões independentes de simulador, cada uma adaptada a diferentes ambientes operacionais e perfis de uso. Todas seguem rigorosamente a lógica de cálculo apresentada neste documento, com base nas fórmulas oficiais de valor líquido e taxa cobrada.

As versões disponíveis são:

- **Simulador Excel**  
  Implementado em planilha com fórmulas abertas e estrutura modular. Permite simulações manuais e integração com modelos financeiros.  
  🔗 simulado_excel_mdr-padrao_1.0.md

- **Simulador .BAT (Script Local)**  
  Desenvolvido para execução automatizada em ambiente Windows. Ideal para testes em lote, validação técnica e auditoria de cenários.  
  🔗 simulado_bat_mdr-padrao_2.0.md]

- **Simulador Web (LiquiCalc)**  
  Disponível na interface online do LiquiCalc. Oferece simulação interativa com foco em usabilidade, precisão e acesso rápido.  
  🔗 simulado_web_mdr-padrao_3.0.md

Cada versão foi validada em conformidade com os testes descritos na seção anterior e está documentada em arquivos técnicos específicos, que registram a estrutura de cálculo, os parâmetros utilizados e os resultados obtidos.

---

## 📉 Impacto no Negócio

A MDR pode variar de **0,5% a 10%**, dependendo da adquirente, bandeira e negociação. Em empresas com margens apertadas, esse custo pode comprometer a rentabilidade.

📊 Segundo especialistas, o Brasil possui uma das MDRs mais altas do mundo, especialmente em vendas parceladas. (Fonte [Shield Bank](https://shieldbank.com.br/2024/10/20/o-que-e-taxa-mdr-como-ela-impacta-seu-negocio-e-como-se-livrar-dela/))

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
- O prazo de recebimento (D+1, D+2, D+10, D+15, D+30 e etc.) não altera o MDR padrão, mas impacta o fluxo de caixa  
- A taxa pode ser:
  - 📦 Fixa (modelo Blended)  
  - 📈 Variável (modelo Interchange++)  

---

## ✅ Testes de Validação

A lógica de cálculo do modelo MDR Padrão foi submetida a uma série de testes técnicos, com o objetivo de garantir sua consistência matemática e operacional em diferentes ambientes. Os testes foram documentados e organizados em quatro frentes complementares:

- Validação Conceitual: Verificação teórica dos fundamentos e regras de cálculo.  
- Validação em Excel: Simulações práticas em planilhas para comprovar os resultados esperados.  
- Validação via Script .BAT: Testes automatizados para execução em ambiente local.  
- Validação na Versão Web: Avaliação da lógica aplicada na interface online do sistema LiquiCalc.

Esses testes contemplam cenários com valores mínimos e máximos, além de simulações completas de crédito parcelado de 1x a 21x, considerando diferentes faixas de MDR.  
Os resultados obtidos comprovam a consistência matemática e operacional do modelo MDR Padrão, consolidando-o como referência oficial para qualquer implementação no sistema LiquiCalc.

Cada etapa foi registrada em arquivos específicos, que servem como referência oficial para auditoria e implementação:

- 🔗 [`teste_conceito_mdr-padrao_1.0.md`](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/0_conceitos_teste/1_simulador_mdr-padrao1.0v/teste_conceito_mdr-padrao.md)
- 🔗 `teste_calculo_mdr-padrao_2.0.md`
- 🔗 `teste_calculo_mdr-padrao_3.0.md`
- 🔗 `teste_calculo_mdr-padrao_4.0.md` 

---

## 🔗 Referências

- [Asaas – O que é MDR](https://blog.asaas.com/o-que-e-mdr/)  
- [Equals – Taxa MDR: entenda como funciona](https://equals.com.br/blog/taxa-mdr/)  
- [iDinheiro – O que é MDR e como funciona](https://www.idinheiro.com.br/negocios/mdr-taxa-desconto/) 
- [InfinitePay – O que é taxa MDR](https://www.infinitepay.io/blog/o-que-e-taxa-mdr) 
- [Shield Bank – Como a MDR impacta seu negócio e como se livrar dela](https://shieldbank.com.br/2024/10/20/o-que-e-taxa-mdr-como-ela-impacta-seu-negocio-e-como-se-livrar-dela/)
- [Como Funcionam as Taxas das Máquinas de Cartão?](https://www.youtube.com/watch?v=ZU45yUq7ciU)
- [TAXA de CARTÕES (MDR), como reduzir? – Indicadores Financeiros](https://www.youtube.com/watch?v=sh3Qw7o6cus)
- [Venda com Cartão de Crédito: a MDR e Antecipação das Parcelas](https://www.youtube.com/watch?v=2io7VDFWdhk)
- [MAQUININHA COM PARCELAMENTO EM 21 VEZES - 3RMS TECH](https://www.youtube.com/watch?v=29HUpPIBFtw)
