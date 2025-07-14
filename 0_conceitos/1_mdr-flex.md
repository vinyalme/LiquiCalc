## 🧩 **O que é MDR Flex?**

O MDR Flex é uma forma de calcular a taxa cobrada **em vendas parceladas**, onde a taxa **aumenta conforme o número de parcelas**.
Ela é **flexível** porque **não há uma taxa fixa**, como no MDR padrão.

---

## 🔹 **Fator 1 (F1) – Taxa base**

* É a **taxa mínima** cobrada no parcelamento.
* Se a venda for parcelada em **1x (à vista)**, **2x** ou até **n**, o Fator 1 sempre é **o ponto de partida**.
* Em outras palavras, é a **taxa do parcelado mínimo**.

---

## 🔸 **Fator 2 (F2) – Taxa adicional por parcela**

* É um **acréscimo** sobre o Fator 1, **por cada parcela a mais após a 1ª**.
* Ex: em uma venda em 4x, o Fator 2 será aplicado **3 vezes** (da 2ª à 4ª parcela).

---

## 🧮 **Fórmula na prática**

```text
Taxa total = Fator 1 + (nº de parcelas - 1) × Fator 2
```

---

## 🧠 **Exemplo prático**

Vamos simular uma venda com os seguintes dados:

* Fator 1: 3,99%
* Fator 2: 1,25%
* Parcelamento: 5x

### Cálculo:

```text
Taxa total = 3,99% + (5 - 1) × 1,25%
            = 3,99% + 4 × 1,25%
            = 3,99% + 5,00%
            = 8,99%
```

Se a venda for de R\$ 1.000, o valor líquido é:

```text
1.000 × (1 - 0,0899) = R$ 910,10
```

---

## 🔁 **Como o Fator 2 impacta o valor?**

| Parcelas | Taxa final (F1 + F2) | Exemplo (com F1=3,99%, F2=1,25%) |
| -------- | -------------------- | -------------------------------- |
| 1x       | F1                   | 3,99%                            |
| 2x       | F1 + 1×F2            | 5,24%                            |
| 3x       | F1 + 2×F2            | 6,49%                            |
| 4x       | F1 + 3×F2            | 7,74%                            |
| 5x       | F1 + 4×F2            | 8,99%                            |
| ...      | ...                  | ...                              |

Ou seja: quanto mais parcelas, **mais a taxa sobe** por causa do **Fator 2**.

---

## 🎯 **Resumo rápido**

| Elemento    | Papel no cálculo            | Impacto                   |
| ----------- | --------------------------- | ------------------------- |
| **Fator 1** | Taxa base do parcelado      | Usada sempre              |
| **Fator 2** | Acréscimo por parcela extra | Aumenta proporcionalmente |

---

## 🎓 **Analogia simples:**

> Pense no Fator 1 como o "aluguel base" de um imóvel, e o Fator 2 como uma "taxa por andar que você sobe".
> Se você ficar no térreo (1x), paga só o aluguel base (F1).
> Mas quanto mais andares (parcelas) você sobe, mais caro fica — por causa do F2.

---
---
### 🔹 **2. MDR Flex (com Fator 1 e Fator 2)**

**Definição:**
Usado em crédito parcelado. A taxa aumenta conforme o número de parcelas.

**Fórmula:**

```text
Taxa final = Fator 1 + (nº de parcelas - 1) × Fator 2
Valor líquido = Valor bruto × (1 - Taxa final)
```

**Exemplo:**

* Venda: R\$ 1.000,00
* Parcelado em 4x
* Fator 1 = 4,09%
* Fator 2 = 1,29%

```text
Taxa final = 4,09% + (4 - 1) × 1,29% = 7,96%
Valor líquido = 1.000 × (1 - 0,0796) = R$ 920,40
```

---
