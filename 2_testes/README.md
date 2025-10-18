# **LiquiCalc – Testes e Validação**

### 🎯 Objetivo  
Esta pasta tem como finalidade validar a precisão dos cálculos realizados pelo LiquiCalc em suas diferentes versões: Excel, scripts BAT e interface Web. Os testes garantem que os resultados estejam alinhados com os conceitos financeiros definidos na pasta de fundamentos técnicos.

---

## 📂 Escopo dos Testes  
Os testes estão organizados em quatro categorias principais:

- **🧪 Testes Conceituais**  
  Validam a lógica teórica dos cálculos, como MDR padrão, MDR flexível e antecipação de recebíveis.  
  Acesse aqui: [🧪 *Testes Conceituais*](https://github.com/vinyalme/LiquiCalc/tree/main/2_testes/0_conceitos_teste)

- **📊 Testes em Excel**  
  Permitem conferência manual dos cálculos e fórmulas aplicadas nas planilhas.  
  Acesse aqui: [📊 *Testes em Excel*](https://github.com/vinyalme/LiquiCalc/tree/main/2_testes/1_excel_teste)

- **🖥️ Testes Automatizados via BAT**  
  Executam os scripts no terminal para verificar precisão e robustez dos resultados.  
  Acesse aqui: 🖥️ *Testes BAT*

- **🌐 Testes Interativos Web**  
  Validam a interface visual, os inputs e outputs, além da usabilidade geral.  
  Acesse aqui: 🌐 *Testes Web*

---

## 📏 Regras de Validação

- Todos os testes devem ser comparados com os conceitos definidos na pasta de fundamentos técnicos.  
- Os valores esperados devem estar documentados nos arquivos de teste correspondentes.  
- Cada versão do LiquiCalc deve conter pelo menos um caso de teste completo.  
- Erros ou divergências devem ser registrados com descrição clara, versão afetada, passos para reprodução e, se possível, sugestão de correção.

---

## 📋 Formato dos Relatórios de Teste

Cada pasta de teste conterá, ao final, uma tabela com os seguintes campos:

## 🧾 Cabeçalho da Tabela de Testes

| Teste | Modalidade | Valor da Venda | MDR (%) | 🧮 Valor Retido (Taxa) | 🧮 Valor Líquido | ✅ Verificação (Líquido + Taxa = Venda?) | Diferença | Precisão |
|-------|------------|----------------|---------|------------------------|------------------|------------------------------------------|-----------|----------|

Essa tabela permite visualizar rapidamente a acurácia dos cálculos realizados em cada simulação.

---

## 📊 Resumo de Precisão dos Testes

| Métrica             | Resultado  |
|---------------------|------------|
| Diferença Máxima    | R$ 0,00    |
| Diferença Mínima    | R$ 0,00    |
| Precisão Média      | 100,00%    |
| Precisão Mínima     | 100,00%    |
| Precisão Máxima     | 100,00%    |

> Esse resumo serve como conclusão final da confiabilidade dos cálculos realizados por cada versão do LiquiCalc.

---

## 📝 Considerações Finais

Os testes descritos aqui têm como foco garantir consistência técnica e lógica nos cálculos, mas não substituem processos formais de auditoria contábil.  
Além disso, qualquer nova versão do LiquiCalc só deve ser disponibilizada após a inclusão e validação completa de seus respectivos testes, assegurando que os resultados permaneçam confiáveis e alinhados com os fundamentos definidos.

---
