### 🔹 **3. Antecipação de Recebíveis**

**Definição:**
Recebimento antes do prazo original (ex: D+1 ao invés de D+30). Pode ser automática ou manual.

#### 🧮 Fórmula Comum:

```text
Valor líquido = Valor original × (1 - (Taxa antecipação × Dias antecipados / 30))
```

---

#### 🔸 3.1. Antecipação Total (todas as parcelas antecipadas de uma vez)

**Exemplo:**

* Parcela: R\$ 300,00
* Taxa de antecipação: 2,99% ao mês
* Dias antecipados: 29

```text
Valor líquido ≈ 300 × (1 - (0,0299 × 29/30)) = R$ 271,06
```

---

#### 🔸 3.2. Antecipação Diária, Semanal, Quinzenal ou Mensal

**Variação:**
Mesma lógica, só muda o número de dias antecipados.

* D+1: \~29 dias antecipados
* D+7: \~23 dias
* D+15: \~15 dias
* D+30: sem antecipação

---

### 🔹 **4. Recebimento em Parcelas Futuras (sem antecipação)**

Cada parcela é paga no mês correspondente:

* 1ª parcela → D+30
* 2ª parcela → D+60
* ...
* nª parcela → D+30×n

> Esse é o valor “cheio”, sem antecipação, mas com desconto de MDR no momento da venda.

**Fórmula por parcela:**

```text
Parcela líquida = (Valor venda ÷ nº parcelas) × (1 - Taxa MDR)
```

---

### 🔹 **5. Comparativo entre formas de recebimento**

Você pode usar isso para gerar:

* Diferença entre **receber com e sem antecipação**
* Quanto o comerciante está **perdendo com antecipações recorrentes**
* Simulação de **economia** mudando o prazo de recebimento

---

### 🔹 **6. Taxas separadas (Bandeira, Adquirente, Banco)**

**Avançado:** em casos onde as taxas são segmentadas:

```text
Taxa total = Taxa bandeira + Taxa adquirente + Taxa banco
Valor líquido = Valor bruto × (1 - Taxa total)
```

---

### ⚠️ Observações Importantes

* Sempre converter porcentagens para **fator decimal** (3% = 0,03)
* Taxa de antecipação geralmente é **mensal**, mas o cálculo é proporcional aos dias antecipados
* Em algumas adquirentes, antecipação de parcelado considera **curva regressiva de juros** (pode ser implementado depois)

---

### ✅ Resumo Visual

| Cenário                 | Fórmula                                                  |
| ----------------------- | -------------------------------------------------------- |
| MDR Padrão              | `líquido = bruto × (1 - taxa_mdr)`                       |
| MDR Flex                | `líquido = bruto × (1 - (fator1 + (n-1)×fator2))`        |
| Antecipação             | `líquido = bruto × (1 - (taxa_antecipação × dias / 30))` |
| Parcelado sem antecipar | `líquido_parcela = parcela × (1 - taxa_mdr)`             |

---
