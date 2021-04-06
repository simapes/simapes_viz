# SIMAPES Viz
### Biblioteca para visualização de dados do projeto SIMAPES

Autor: Wanderson Marques (wdsmarques@gmail.com)

## Como baixar essa biblioteca
- Clique no botão **Code** em verde
- Clique em **Download ZIP**

## Inspiração
Livro Storytelling With Data

## Requisitos
- ggplot2
- dplyr
- geobr
- sf

## Gráfico de barras (função *grafico_barra*)

| Parâmetro    | Descrição                                                            | Obrigatório |   |   |
|--------------|----------------------------------------------------------------------|-------------|---|---|
| data         | Conjunto de dados data.frame                                                         | Sim         |   |   |
| x            | Nome da Variável a ser utilizada no eixo X                           | Sim         |   |   |
| y            | Nome da Variável a ser utilizada no eixo Y                           | Sim         |   |   |
| orientacao   | Orientação do gráfico, sendo v=vertical, h=horizontal | Sim          |             |   |   |
| titulo       | Título do Gráfico                                                    | Sim         |   |   |
| subtitulo    | Subtítulo do Gráfico                                                 | Não         |   |   |
| cores        | Lista de cores das barras                                            | Não         |   |   |
| destacar     | Índice para destacar (apenas uma barra colorida)                     | Não         |   |   |
| cor_destaque | Cor da barra destacada (caso haja), sendo 1=azul (padrão), 2=verde, 3=amarelo      | Não         |   |   |


## Gráfico de linha/area (função *grafico_linha*)

| Parâmetro    | Descrição                                                            | Obrigatório |   |   |
|--------------|----------------------------------------------------------------------|-------------|---|---|
| data         | Conjunto de dados data.frame                                                         | Sim         |   |   |
| x            | Nome da Variável a ser utilizada no eixo X                           | Sim         |   |   |
| y            | Nome da Variável a ser utilizada no eixo Y                           | Sim         |   |   |
| titulo       | Título do Gráfico                                                    | Sim         |   |   |
| subtitulo    | Subtítulo do Gráfico                                                 | Não         |   |   |
| preencher        | Preencher a área sob a linha                                            | Não         |   |   |
| linetype     | Tipo da linha solid(padrão), dotted ou dashed                     | Não         |   |   |

## Mapas (função *mapa*)

| Parâmetro    | Descrição                                                            | Obrigatório |   |   |
|--------------|----------------------------------------------------------------------|-------------|---|---|
| dataset_final         | Conjunto de dados data.frame após join com geobr                                                        | Sim         |   |   |
| titulo       | Título do Gráfico                                                    | Sim         |   |   |
| subtitulo    | Subtítulo do Gráfico                                                 | Não         |   |   |
| nome_variavel        | Nome da variável na legenda                                            | Não         |   |   |
| Paleta de cores     | Paleta de cores (existente no R colorbrew)                     | Não         |   |   |
