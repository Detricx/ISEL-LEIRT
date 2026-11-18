# Projetos de Lógica e Sistemas Digitais (LSD)

Os projetos descrevem e testam circuitos digitais em **VHDL** e **Verilog**, com configurações para síntese na placa
**DE10-Lite**, baseada num dispositivo **Intel/Altera MAX 10 10M50DAF484C6GES**.

## Conteúdo

| Diretório | Descrição |
| --- | --- |
| [`TLab1`](./TLab1) | Circuitos de deteção de paridade e de zeros, incluindo `ParImpar`, `PnZ4` e `PnZ10`, com testbench para `PnZ10`. |
| [`TLab2`](./TLab2) | Implementação hierárquica de uma **ALU de 4 bits**, com unidade aritmética, unidade lógica, deslocamentos, multiplexagem e geração de flags. |
| [`Somatorio`](./Somatorio) | Componentes de uma unidade aritmética/somador, incluindo full adders, somador, subtrator e testbenches. |
| [`TP2`](./TP2) | Exercícios adicionais de descrição e teste de circuitos digitais. |
| [`AND_OR_191026`](./AND_OR_191026) | Unidade lógica combinatória com operações AND e OR sobre vetores de 4 bits. |
| [`OR_XNOR_191026`](./OR_XNOR_191026) | Variação da unidade lógica com operações OR e XNOR sobre vetores de 4 bits. |
| [`backup`](./backup) | Cópia de trabalho de versões anteriores, mantida para referência. |

Os diretórios dos projetos incluem os ficheiros `.qpf` e `.qsf` do Quartus, fontes HDL, testbenches, atribuições de pinos e, em alguns casos, resultados de compilação e scripts de simulação para Questa/ModelSim.

## Tecnologias e ferramentas

- **VHDL** e **Verilog** para descrição de hardware;
- **Intel/Altera Quartus Prime** (os projetos indicam a versão 25.1);
- **Questa/ModelSim** para simulação RTL, quando disponível;
- Placa **DE10-Lite** com FPGA **MAX 10**;
- Testbenches VHDL para validar alguns dos componentes antes da síntese.

## Como utilizar

1. Instale o Quartus Prime e, opcionalmente, Questa/ModelSim.
2. Clone este repositório e abra o ficheiro `.qpf` correspondente no Quartus.
   Por exemplo:

   ```text
   TLab2/ALU.qpf
   ```

3. Confirme o dispositivo e as atribuições de pinos no projeto.
4. Compile com **Processing > Start Compilation**.
5. Para simular, utilize os testbenches disponíveis ou os scripts `.do` dentro das pastas de simulação.
6. Para programar a placa, utilize o ficheiro `.sof` gerado após uma compilação bem-sucedida e o **Quartus Programmer**.

## Arquitetura da ALU

O projeto [`TLab2`](./TLab2) organiza a ALU em componentes reutilizáveis:

- `AU`: Operações aritméticas;
- `LU`: Operações lógicas;
- `SU`: Operações de deslocamento;
- `MUX3`: Seleção do resultado da unidade ativa;
- `FLAGS`: Cálculo de carry/borrow, overflow, zero e comparação;
- `ALU`: Integração dos blocos e interface de controlo.

## Organização dos ficheiros gerados

Pastas como `db`, `incremental_db`, `output_files` e `simulation` contêm informação gerada pelo Quartus ou pelas ferramentas de simulação. Esses
ficheiros podem ser recriados ao abrir e compilar os projetos; os fontes HDL e as configurações `.qsf`/`.qpf` são os elementos principais para reutilizar os trabalhos.

## Contexto

Este repositório reúne soluções e experiências de laboratório, pelo que os projetos podem ter diferentes níveis de acabamento e versões alternativas. Consulte cada pasta e o material PDF incluído para conhecer os requisitos específicos do respetivo trabalho.
