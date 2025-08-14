# 💳 MDR Flexível — Conceito, Fórmula e Aplicação

> 📘 _Autor: Vinicius • Última atualização: agosto/2025_

## 📑 Sumário

- [🧠 O que é MDR Flexível?](#-o-que-é-mdr-flexível)
- [📐 Fórmula de Cálculo](#-fórmula-de-cálculo)
- [📊 Diferença entre Fator 1 e Fator 2](#-diferença-entre-fator-1-e-fator-2)
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

A MDR Flexível é uma variação dinâmica da taxa de desconto aplicada sobre os recebíveis. Ao invés de uma taxa fixa, ela é composta por dois fatores:

- **Fator 1**: percentual base, definido por risco ou perfil do cliente  
- **Fator 2**: ajustador contextual, que varia conforme prazo, volume ou tipo de operação  

📌 Exemplo: numa venda de R$ 100.000 com Fator 1 de 2,5% e Fator 2 de 1,2, o MDR final será de 3%, e o lojista receberá R$ 97.000.

Essa abordagem permite maior precisão na análise de liquidez e personalização da taxa conforme o contexto da operação.

---

## 📐 Fórmula de Cálculo

A fórmula principal da MDR Flexível é:

```plaintext
MDR_flex = Fator 1 × Fator 2
```

Onde:

- **Fator 1** = percentual base de desconto  
- **Fator 2** = multiplicador ajustável conforme contexto  

---

## 📊 Diferença entre Fator 1 e Fator 2

| Fator            | Descrição                                                                 | Exemplos de Aplicação                         |
|------------------|---------------------------------------------------------------------------|-----------------------------------------------|
| **Fator 1**      | Percentual base de desconto, definido por risco, perfil ou setor          | 2,5% para clientes com alto risco              |
| **Fator 2**      | Ajustador contextual, varia conforme prazo, volume ou tipo de operação     | 1,2 para antecipações acima de 60 dias        |

🔍 A multiplicação dos dois fatores resulta na taxa final de MDR aplicada à operação.

---

## 💰 Cálculo do Valor Recebido pelo Associado

Antes de aplicar a taxa, é importante saber quanto o associado irá efetivamente receber:

```plaintext
Valor Recebido = Receita Bruta − (Receita Bruta × MDR_flex)
```

📌 Exemplos:

| Receita Bruta | Fator 1 | Fator 2 | MDR (%) | Taxa Cobrada | Valor Recebido |
|---------------|---------|---------|---------|--------------|----------------|
| R$ 100.000    | 2,5%    | 1,2     | 3,0%    | R$ 3.000     | R$ 97.000      |
| R$ 50.000     | 1,8%    | 1,5     | 2,7%    | R$ 1.350     | R$ 48.650      |
| R$ 200.000    | 3,0%    | 1,1     | 3,3%    | R$ 6.600     | R$ 193.400     |

---

## 💸 Fórmula de Cálculo da Taxa Cobrada

A taxa efetiva cobrada sobre a receita bruta é:

```plaintext
Taxa Cobrada = Receita Bruta × MDR_flex
```

Esse valor representa o montante descontado da operação, que será retido pela adquirente ou instituição financeira.

---

## 🧩 Composição da MDR

A MDR Flexível pode ser composta por:

| Componente        | Origem do Fator | Exemplos de Influência                          |
|-------------------|------------------|--------------------------------------------------|
| 🧮 Fator 1         | Risco e perfil    | Score de crédito, setor, histórico de pagamento  |
| 📊 Fator 2         | Contexto da operação | Prazo de recebimento, volume, tipo de antecipação |

💡 Essa composição permite calibrar a taxa conforme o cenário específico da operação.

---

## 📌 Contexto de Aplicação

O MDR Flexível é utilizado exclusivamente quando o lojista opta por receber suas vendas com liquidação automática em D+2. 
Essa modalidade não permite a contratação de antecipações adicionais (automáticas ou manuais), pois o modelo já considera o recebimento antecipado como padrão. 

### ✅ Quando o MDR Flexível é aplicável 
- O lojista contratou MDR Flex com liquidação em D+2.
- A taxa é calculada com base nos fatores definidos (Fator 1 e Fator 2).
- O valor líquido é recebido em até dois dias úteis após a venda.

- ### ❌ Quando o MDR Flexível não é aplicável
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
