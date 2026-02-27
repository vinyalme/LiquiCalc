# ⏳ Antecipação — Conceito, Fórmula e Aplicação

> 📘 _Autor: Vinicius • Última atualização: Outubro/2025_

## 📑 Sumário

- [🧠 O que é Antecipação?](#-o-que-é-antecipação)
- [🧩 Composição da Antecipação](#-composição-da-antecipação)
- [📐 Fórmula de Cálculo](#-fórmula-de-cálculo)
- [💸 Fórmula de Cálculo da Taxa Cobrada](#-fórmula-de-cálculo-da-taxa-cobrada)
- [📌 Contexto de Aplicação](#-contexto-de-aplicação)
- [📊 Aplicações no LiquiCalc](#-aplicações-no-liquicalc)
- [🧪 Simulador de Antecipação](#-simulador-de-antecipação)
- [📉 Impacto no Negócio](#-impacto-no-negócio)
- [⚖️ Alternativas e Redução](#️-alternativas-e-redução)
- [📎 Observações Importantes](#-observações-importantes)
- [✅ Testes de Validação](#-testes-de-validação)
- [🔗 Referências](#-referências)

---

## 🧠 O que é Antecipação?

Antecipação é o processo pelo qual o lojista solicita ou contrata o recebimento antecipado de valores que seriam liquidados futuramente conforme a agenda financeira. Ela permite maior controle de fluxo de caixa e pode ser feita de forma automática ou manual.

Existem dois tipos principais:

- **Antecipação Automática**: contratada previamente, com liquidação em D+1, D+2, D+5, D+15 ou D+30 (sempre em dias úteis).
- **Antecipação Manual**: solicitada pontualmente pelo lojista, geralmente em vendas de alto valor ou necessidade urgente de caixa.

A taxa de antecipação é aplicada sobre o valor líquido da venda (após desconto do MDR) e é proporcional ao número de parcelas antecipadas.

---

## 🧩 Composição da Antecipação

A taxa de antecipação é definida pela adquirente e pode variar conforme:

| Componente            | Influência                        |
| --------------------- | --------------------------------- |
| 📅 Prazo escolhido    | D+1, D+2, D+5, D+15, D+30         |
| 💳 Tipo de venda      | Crédito à vista ou parcelado      |
| 📊 Número de parcelas | Impacta proporcionalidade da taxa |

> 💡 A taxa é sempre aplicada sobre o valor líquido (após MDR) e a liquidação ocorre em dias úteis.

---
## 📐 Fórmula de Cálculo

A antecipação é aplicada sobre o valor líquido da venda (após o desconto da taxa MDR) e proporcional ao número de parcelas. O cálculo pode ser apresentado em duas etapas: uma versão simples e uma versão completa.

Versão Simples

```plaintext
Valor Recebido = Valor Bruto − Desconto MDR − Taxa de Antecipação
````

Definições:
- Valor Bruto: total da venda realizada
- Desconto MDR: percentual cobrado pela adquirente sobre o valor bruto
- Desconto por Antecipação: soma proporcional aplicada sobre cada parcela antecipada

**Versão Completa**

Seja:

- `V`  = valor bruto da venda  
- `t_MDR`  = taxa MDR (%)  
- `t_ANT` = taxa de antecipação (%)  
- `n` = número de parcelas  

A fórmula para o valor líquido final recebido é:

```plaintext
Valor Líquido Final = V * (1 - t_MDR/100) * (1 - t_ANT/100 * n+1/2)
```

Essa estrutura considera:
- O desconto da taxa MDR sobre o valor bruto.
- A média proporcional das taxas de antecipação aplicadas sobre cada parcela, com crescimento linear conforme o número da parcela.

---

## 💸 Fórmula de Cálculo da Taxa Cobrada

A taxa de antecipação é aplicada individualmente sobre cada parcela, com base no número da parcela. A média dessas aplicações é usada para calcular o total descontado.

Aplicação por Parcela

| Parcela | Taxa Aplicada | Valor Descontado   |
|---------|---------------|--------------------|
| 1ª      | 1 * t_ANT     | sobre a 1ª parcela |
| 2ª      | 2 * t_ANT     | sobre a 2ª parcela |
| 3ª      | 3 * t_ANT     | sobre a 3ª parcela |

Fórmula do Desconto Total

```plaintext
Desconto Total = V * (1 - t_MDR/100) * (t_ANT/100 * n+1/2)
```

---

Exemplo Prático

Venda de R$1.000, parcelada em 3x, com MDR de 3% e taxa de antecipação de 2%:

1. Valor líquido após MDR:
```plaintext
R$1000,00 * (1 - 0,03) = R$970,00
```

2. Desconto proporcional por antecipação:
```plaintext
R$970,00 * (0,02 * 3+1/2) = R$970,00 * 0,04 = R$38,80
```

3. Valor líquido final recebido:
```plaintext
R$970,00 - R$38,80 = R$931,20
```

---


## 📌 Contexto de Aplicação

A antecipação pode ser utilizada em conjunto com o MDR Padrão, mas **não pode ser combinada com MDR Flex**.

### ✅ Quando a antecipação é aplicável

* O lojista utiliza MDR Padrão.
* Pode contratar antecipação automática com datas fixas (D+1, D+2, D+5, D+15, D+30).
* Pode solicitar antecipação manual de valores específicos. A taxa é definida pela adquirente e aplicada proporcionalmente às parcelas.

### ❌ Quando a antecipação não é aplicável

* Quando o lojista utiliza MDR Flex (liquidação automática em D+2). Nesse caso, o modelo já considera antecipação embutida e não permite novas antecipações.

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

## 🧪 **Simulador de Antecipação**
O modelo de **Antecipação de Recebíveis** foi implementado em três versões independentes de simulador, cada uma adaptada a diferentes ambientes operacionais e perfis de uso. Todas seguem rigorosamente a lógica de cálculo apresentada neste documento, considerando o Valor Recebido = Valor Bruto − MDR − Taxa de Antecipação, com aplicação proporcional por parcela e de acordo com os prazos escolhidos.

As versões disponíveis são:

- **Simulador Excel**
Implementado em planilha com fórmulas abertas e estrutura modular. Permite simulações manuais de diferentes valores brutos, número de parcelas e tipos de antecipação (automática ou manual). Ideal para integração com modelos financeiros e análises de fluxo de caixa.
  - 🔗 [`simulador_antecipacao.xlsx`](https://github.com/vinyalme/LiquiCalc/tree/main/1_simuladores/0_excel/3_simulador_antecipacao2.2v)

- **Simulador .BAT (Script Local)**
Desenvolvido para execução automatizada em ambiente Windows. Permite testes em lote de múltiplos cenários de antecipação, incluindo variações extremas de receita e diferentes prazos (D+1, D+2, D+5, D+15, D+30). Perfeito para validação técnica e auditoria de cenários complexos.
  - 🔗 [`simulador_antecipacao.bat`](https://github.com/vinyalme/LiquiCalc/tree/main/1_simuladores/1_simulador_bat/3_simulador_antecipacao3.2v)

- **Simulador Web (LiquiCalc)**
Disponível na interface online do LiquiCalc. Oferece simulação interativa com foco em usabilidade, precisão e acesso rápido, permitindo avaliar diferentes combinações de parcelas, taxas e prazos de antecipação de forma prática e visual.
  - 🔗 [`simulador_antecipacao.web`](https://github.com/vinyalme/LiquiCalc/tree/main/1_simuladores/2_simulador_web/3_simulador_antecipacao4.2v)

Cada versão foi validada em conformidade com os **Testes de Validação** descritos na seção anterior e está documentada em arquivos técnicos específicos, registrando a estrutura de cálculo, os parâmetros utilizados e os resultados obtidos, garantindo confiabilidade, consistência matemática e operacional em qualquer ambiente.


---

## 📉 Impacto no Negócio

A antecipação afeta diretamente:

* 💰 Liquidez imediata do lojista
* 📉 Custo financeiro da operação
* 📊 Planejamento de fluxo de caixa

> 🔍 Antecipações mal calibradas podem comprometer a margem de lucro, especialmente em vendas parceladas com taxas elevadas.

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

## ✅ **Testes de Validação**
A lógica de cálculo do modelo de **Antecipação de Recebíveis** foi submetida a uma bateria de testes técnicos, com o objetivo de comprovar sua consistência matemática e operacional em diferentes ambientes. Assim como nos modelos MDR, os testes foram documentados e organizados em quatro frentes complementares:

- **Validação Conceitual:** Revisão teórica dos fundamentos da antecipação, garantindo que a fórmula principal — Valor Recebido = Valor Bruto − MDR − Taxa de Antecipação — esteja alinhada às regras contratuais das adquirentes e às práticas de mercado.

- **Validação em Excel:** Simulações em planilhas com diferentes valores brutos, faixas de parcelamento e prazos de antecipação. Essa etapa comprovou a precisão do cálculo do valor líquido, da taxa proporcional e do impacto em diferentes datas de recebimento.

- **Validação via Script .BAT:** Implementação do modelo em ambiente local, com automação de cenários de 1x até 21x parcelas, incluindo variações extremas de receita (mínima e máxima) e diferentes prazos de antecipação (D+1, D+2, D+5, D+15, D+30).

- **Validação na Versão Web (LiquiCalc):** Testes interativos na plataforma LiquiCalc, avaliando não só a exatidão matemática, mas também a usabilidade e a performance em consultas simultâneas e múltiplos cenários de antecipação.

Esses testes contemplaram cenários variados, como:

- Parcelamentos curtos (1x–3x), médios (4x–6x) e longos (7x–21x)
- Diferentes prazos de antecipação (D+1, D+2, D+5, D+15, D+30)
- Simulações de receita em escalas distintas (de R$ 100 até R$ 1.000.000)
- Comparação de cálculos entre antecipação automática e manual

📊 Os resultados obtidos confirmam que o modelo de antecipação mantém consistência matemática em todos os ambientes testados e representa fielmente a estrutura contratual e operacional de cálculo, consolidando-se como referência oficial para implementação no LiquiCalc.

Cada etapa foi registrada em arquivos técnicos específicos, que servem como base para auditoria, manutenção e futuras evoluções do sistema:

- 🔗 [`teste_conceito_antecipacao_1.2.md`](https://github.com/vinyalme/LiquiCalc/blob/main/2_testes/0_conceitos_teste/3_simulador_antecipacao1.2v/teste_conceito_antecipacao.md)
- 🔗 `teste_calculo_antecipacao_2.2.md`
- 🔗 `teste_calculo_antecipacao_3.2.md`
- 🔗 `teste_calculo_antecipacao_4.2.md`

---

## 🔗 Referências

* [Stone – Como funciona a antecipação automática](https://ajuda.stone.com.br/antecipacao/antecipacao-e-seus-beneficios)
* [PagSeguro – Taxas de antecipação por bandeira](https://pagbank.com.br/para-seu-negocio/maquininhas/taxas-e-tarifas)
* [InfinitePay – Antecipação em D+1 e D+2](https://ajuda.infinitepay.io/pt-BR/articles/10301865-posso-antecipar-minhas-vendas-para-receber-no-mesmo-dia)
* [Equals – Simulador de antecipação de recebíveis](https://equals.com.br/blog/simular-antecipacao-de-recebiveis-conheca-a-solucao-da-equals/)
* [Serasa – Guia de antecipação para pequenos negócios](https://www.serasaexperian.com.br/conteudos/pequenas-empresas/)
* [Caixa Econômica Federal – Como solicitar a antecipação de pagamentos na maquininha da Caixa?](https://selectra.net.br/financas/maquininha/caixa)
* [Artigo científico – Antecipação de Recebíveis: Implicações dentro do ciclo financeiro](https://recima21.com.br/recima21/article/view/3739/2678)
* [Aspectos jurídicos e tributários – Antecipação de Recebíveis](https://bonettiassociados.com.br/index.php/2025/02/27/antecipacao-de-recebiveis-de-cartoes-de-credito-aspectos-juridicos-e-tributarios/)
* [Meios de pagamento - Como calcular a taxa de antecipação](https://www.youtube.com/watch?v=lI4iiWQ4VhY)
* [Como funciona a antecipação de pagamentos?](https://www.youtube.com/watch?v=VJIm7YCPHeE)

---
