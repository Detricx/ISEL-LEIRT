# Projetos de Lógica e Sistemas Digitais (LSD)

Coleção de trabalhos práticos de lógica digital desenvolvidos em **VHDL** e
**Verilog** para a unidade curricular de **Lógica e Sistemas Digitais (LSD)**
do ISEL. Os projetos usam a placa **DE10-Lite**, baseada no FPGA
**Intel/Altera MAX 10 10M50DAF484C6GES**.

## Projetos

| Diretório | Descrição | Documentação |
| --- | --- | --- |
| [`TLab1`](./TLab1) | Circuitos de paridade e deteção de valores positivos/negativos e zeros, incluindo `ParImpar`, `PnZ4` e `PnZ10`, com testbench para `PnZ10`. | [Formulário](./TLab1/Formulario.pdf) · [Relatório](./TLab1/Relatorio.pdf) |
| [`TLab2`](./TLab2) | ALU hierárquica de 4 bits, com unidade aritmética, unidade lógica, deslocamentos, multiplexagem e geração de flags. | [Formulário](./TLab2/Formulario.pdf) · [Relatório](./TLab2/Relatorio.pdf) |
| [`Somatorio`](./Somatorio) | Unidade aritmética com somador, subtrator, carry/borrow e testbenches. | [Formulário](./Somatorio/Formulario.pdf) |
| [`UnidadeAritmetica`](./UnidadeAritmetica) | Versão/organização da unidade aritmética com somador, subtrator e geração de sinais de estado. | — |
| [`ProjectAndOr`](./ProjectAndOr) | Unidade lógica combinatória que seleciona entre operações AND e OR sobre vetores de 4 bits. | [Enunciado](./ProjectAndOr/moodleFiles/LSD_2627i_LABc.pdf) |
| [`ProjectOrXnor`](./ProjectOrXnor) | Unidade lógica combinatória que seleciona entre operações OR e XNOR sobre vetores de 4 bits. | [Formulário](./ProjectOrXnor/Formulario.pdf) · [Enunciado](./ProjectOrXnor/moodleFiles/LSD_2627i_LABc.pdf) |

Cada diretório contém, consoante o projeto, ficheiros `.qpf` e `.qsf` do
Quartus, fontes HDL, testbenches, atribuições de pinos e scripts de simulação.
Os ficheiros gerados pelo Quartus e pela ferramenta de simulação são excluídos
pela configuração do [`.gitignore`](./.gitignore).

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
