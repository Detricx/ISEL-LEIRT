# TLab2 — Atrasos de propagação em circuitos CMOS

## Descrição

Este projeto dá continuidade ao estudo de circuitos CMOS do TLab1, centrando-se na análise temporal do circuito e dos atrasos de propagação. As simulações em LTspice permitem observar as transições dos sinais e medir atrasos entre pontos do circuito, incluindo configurações com carga capacitiva.

## Objetivos

- Simular a resposta temporal de circuitos CMOS com alimentação de 5 V.
- Medir os atrasos de propagação de subida (`tpLH`) e de descida (`tpHL`) com diretivas `.measure`.
- Comparar sinais em diferentes pontos de uma cadeia de inversores.
- Observar o efeito de uma carga capacitiva na resposta do circuito.

## Ficheiros e pastas

- `meas-delay/meas-delay.asc` — esquema indicado como principal no ficheiro de instruções da pasta; abre-o no LTspice para executar a simulação.
- `meas-delay/Part2.asc` — esquema com vários estágios e medições entre os nós `Y1` e `Y3`/`Y4`.
- `meas-delay/A.asc`, `B.asc`, `C.asc` — esquemas de teste associados às entradas `A`, `B` e `C`.
- Ficheiros `*_capacitor.asc` — variantes dos testes com carga capacitiva.
- `meas-delay/meas-delay.pdf` — documento auxiliar com explicações sobre diretivas SPICE.
- `MOSFET/` — símbolos e modelos SPICE do CD4007 e dos transístores NMOS/PMOS.
- Ficheiros `.plt` — configurações de visualização dos sinais no LTspice.

## Como utilizar

1. Instale o LTspice.
2. Abra `meas-delay/meas-delay.asc` ou o esquema específico que pretende analisar.
3. Confirme que os modelos e símbolos necessários estão disponíveis na pasta do projeto.
4. Execute a simulação transitória.
5. Consulte os sinais no visualizador de formas de onda e, quando aplicável, os resultados das diretivas `.measure` no registo da simulação.

Para estudar a cadeia de inversores e as medições entre estágios, abra `meas-delay/Part2.asc`. Para comparar a resposta com carga capacitiva, utilize as variantes `*_capacitor.asc`.

## Âmbito

O foco desta fase é a resposta temporal do circuito e a medição de atrasos, complementando a implementação e validação lógica documentadas no [README do TLab1](../TLab1/README.md).

