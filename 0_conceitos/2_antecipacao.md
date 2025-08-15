# ⏳ Antecipação — Conceito, Fórmula e Aplicação

> 📘 _Autor: Vinicius • Última atualização: agosto/2025_

## 📑 Sumário

- [🧠 O que é Antecipação?](#-o-que-é-antecipação)
- [📐 Fórmula de Cálculo](#-fórmula-de-cálculo)
- [💸 Fórmula de Cálculo da Taxa Cobrada](#-fórmula-de-cálculo-da-taxa-cobrada)
- [🧩 Composição da Antecipação](#-composição-da-antecipação)
- [📊 Aplicações no LiquiCalc](#-aplicações-no-liquicalc)
- [📌 Contexto de Aplicação](#-contexto-de-aplicação)
- [📉 Impacto no Negócio](#-impacto-no-negócio)
- [⚖️ Alternativas e Redução](#️-alternativas-e-redução)
- [📎 Observações Importantes](#-observações-importantes)
- [🔗 Referências](#-referências)

---

## 🧠 O que é Antecipação?

Antecipação é o processo pelo qual o lojista solicita ou contrata o recebimento antecipado de valores que seriam liquidados futuramente conforme a agenda financeira. Ela permite maior controle de fluxo de caixa e pode ser feita de forma automática ou manual.

Existem dois tipos principais:

- **Antecipação Automática**: contratada previamente, com liquidação em D+1, D+2, D+5, D+15 ou D+30 (sempre em dias úteis).
- **Antecipação Manual**: solicitada pontualmente pelo lojista, geralmente em vendas de alto valor ou necessidade urgente de caixa.

A taxa de antecipação é aplicada sobre o valor líquido da venda (após desconto do MDR) e é proporcional ao número de parcelas antecipadas.

---

## 📐 Fórmula de Cálculo

A fórmula básica para calcular o valor líquido com antecipação é:

```plaintext
Valor Recebido = Valor Bruto − MDR − Taxa de Antecipação
````

Onde:

* **Valor Bruto** = valor total da venda
* **MDR** = taxa de desconto padrão aplicada pela adquirente
* **Taxa de Antecipação** = proporcional ao número de parcelas antecipadas

---

## 💸 Fórmula de Cálculo da Taxa Cobrada

A taxa de antecipação é aplicada de forma proporcional por parcela:

| Parcelas | Aplicação da Taxa de Antecipação   |
| -------- | ---------------------------------- |
| 1x       | 1x taxa sobre valor líquido        |
| 3x       | 1x, 2x, 3x taxa sobre cada parcela |

```plaintext
Taxa Cobrada = Valor Líquido × (Taxa × Número de Parcelas)
````

📌 Exemplo: Venda de R\$ 1.000 parcelada em 3x, com MDR de 3% e taxa de antecipação de 2%:

* Valor líquido: R\$ 970
* Taxa aplicada:

  * Parcela 1: 1 × 2% = R\$ 19,40
  * Parcela 2: 2 × 2% = R\$ 38,80
  * Parcela 3: 3 × 2% = R\$ 58,20
* Total antecipado: R\$ 970 − R\$ 116,40 = R\$ 853,60

---

## 🧩 Composição da Antecipação

A taxa de antecipação é definida pela adquirente e pode variar conforme:

| Componente            | Influência                        |
| --------------------- | --------------------------------- |
| 📅 Prazo escolhido    | D+1, D+2, D+5, D+15, D+30         |
| 💳 Tipo de venda      | Crédito à vista ou parcelado      |
| 📊 Número de parcelas | Impacta proporcionalidade da taxa |

💡 A taxa é sempre aplicada sobre o valor líquido (após MDR) e a liquidação ocorre em dias úteis.

---

## 📊 Aplicações no LiquiCalc

O simulador LiquiCalc permite:

* Inserir valor bruto da venda
* Definir número de parcelas
* Escolher tipo de antecipação (automática ou manual)
* Informar taxa de antecipação
* Calcular valor líquido recebido

🎯 Ideal para:

* Simulações de fluxo de caixa com antecipação
* Comparação entre datas de recebimento
* Avaliação do custo efetivo da antecipação

---

## 📌 Contexto de Aplicação

A antecipação pode ser utilizada em conjunto com o MDR Padrão, mas **não pode ser combinada com MDR Flex**.

### ✅ Quando a antecipação é aplicável

* O lojista utiliza MDR Padrão.
* Pode contratar antecipação automática com datas fixas (D+1, D+2, D+5, D+15, D+30).
* Pode solicitar antecipação manual de valores específicos.
* A taxa é definida pela adquirente e aplicada proporcionalmente às parcelas.

### ❌ Quando a antecipação não é aplicável

* Quando o lojista utiliza MDR Flex (liquidação automática em D+2).
* Nesse caso, o modelo já considera antecipação embutida e não permite novas antecipações.

---

## 📉 Impacto no Negócio

A antecipação afeta diretamente:

* 💰 Liquidez imediata do lojista
* 📉 Custo financeiro da operação
* 📊 Planejamento de fluxo de caixa

🔍 Antecipações mal calibradas podem comprometer a margem de lucro, especialmente em vendas parceladas com taxas elevadas.

---

## ⚖️ Alternativas e Redução

Formas de reduzir o impacto da antecipação:

* 📅 Escolher prazos maiores para reduzir a taxa
* 🧾 Negociar taxas com a adquirente
* 📈 Reduzir número de parcelas nas vendas
* 💡 Utilizar antecipação manual apenas em momentos estratégicos

---

## 📎 Observações Importantes

* A antecipação é sempre aplicada sobre o valor líquido (após MDR)
* A liquidação ocorre em dias úteis, mesmo que o prazo seja contado em dias corridos
* A taxa é proporcional ao número de parcelas antecipadas
* Não pode ser combinada com MDR Flex

---

## 🔗 Referências

* [Stone – Como funciona a antecipação automática](https://ajuda.stone.com.br/antecipacao/antecipacao-e-seus-beneficios)
* [Rede – Diferença entre antecipação avulsa e programada](https://www.userede.com.br/novo/blog/saiba-a-diferenca-entre-a-antecipacao-avulsa-e-o-flex/)
* [PagSeguro – Taxas de antecipação por bandeira](https://pagbank.com.br/para-seu-negocio/maquininhas/taxas-e-tarifas)
* [InfinitePay – Antecipação em D+1 e D+2](https://ajuda.infinitepay.io/pt-BR/articles/10301865-posso-antecipar-minhas-vendas-para-receber-no-mesmo-dia)
* [Equals – Simulador de antecipação de recebíveis](https://equals.com.br/blog/simular-antecipacao-de-recebiveis-conheca-a-solucao-da-equals/)
* [Serasa – Guia de antecipação para pequenos negócios](https://www.serasaexperian.com.br/conteudos/pequenas-empresas/)
* [Caixa Econômica Federal – Como solicitar a antecipação de pagamentos na maquininha da Caixa?](https://selectra.net.br/financas/maquininha/caixa)
* [Artigo científico - ANTECIPAÇÃO DE RECEBÍVEIS – IMPLICAÇÕES DENTRO DO CICLO FINANCEIRO](https://recima21.com.br/index.php/recima21/article/view/3739)
* [Aspectos jurídicos e tributários - ANTECIPAÇÃO DE RECEBÍVEIS – IMPLICAÇÕES DENTRO DO CICLO FINANCEIRO](https://bonettiassociados.com.br/index.php/2025/02/27/antecipacao-de-recebiveis-de-cartoes-de-credito-aspectos-juridicos-e-tributarios/)
* [Grupo ViaInvest – Como funciona a antecipação na maquininha](https://blog.grupoviainvest.com.br/antecipacao-na-maquina-de-cartao-como-funciona-e-por-que-utilizar/)

---
