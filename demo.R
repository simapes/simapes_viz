library(dplyr)
library(geobr)
source("simapes_viz.R")

data('iris')
titulo = 'Curabitur porta feugiat elit'
subtitulo = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in tellus sed dui
Mauris euismod enim eget ipsum lobortis pretium.\n'



# --- Gráfico de Barras --- #
df = iris %>% count(Species)
grafico_barra(data=df, 
              x='Species', 
              y='n', 
              orientacao='v', 
              titulo=titulo, 
              subtitulo=subtitulo,
              #cores=c('red', 'green', 'blue')#,
              destacar=2,
              cor_destaque=1
              )



# --- Gráfico de Linha --- #



df = iris %>% count(Sepal.Length)
grafico_linha(data=df, 
              x='Sepal.Length', 
              y='n',  
              titulo=titulo, 
              subtitulo=subtitulo,
              preencher=0,
              linetype='solid',
              cor=3
)



# --- Mapa --- #
# https://github.com/ipeaGIT/geobr
# https://adrianofigueiredo.netlify.app/post/mapas-em-r-com-geobr/
# https://ggplot2.tidyverse.org/reference/scale_brewer.html


# Por município
municipios <- read_municipality(code_muni=50, year=2010)
dados_mapa <- structure(list(codigo = c(5000203, 5000252, 5000609, 5000708), 
                             valor  = c(0.67,    0.711,   0.673,   0.663)), 
                          row.names = c(NA,4L), 
                          class = c("tbl_df", "tbl", "data.frame"))
dataset_final = left_join(municipios, dados_mapa, by=c("code_muni"="codigo"))
mapa(dataset_final, titulo=titulo, subtitulo=subtitulo,nome_variavel='Variável')
mapa(dataset_final, titulo=titulo, subtitulo=subtitulo,nome_variavel='Variável', paleta='RdYlGn')

# Por UF
estados <- read_state(year=2010)
dados_mapa_uf <- structure(list(codigo = c(50, 51, 52, 53), 
                             valor  = c(0.67,    0.711,   0.673,   0.663)), 
                        row.names = c(NA,4L), 
                        class = c("tbl_df", "tbl", "data.frame"))
dataset_final_uf = left_join(estados, dados_mapa_uf, by=c("code_state"="codigo"))
mapa(dataset_final_uf, titulo=titulo, subtitulo=subtitulo,nome_variavel='Variável', paleta='RdYlGn')

# Por região de saúde
regioes_saude <- read_health_region(year=2013)
dados_mapa_rs <- structure(list(codigo = c('52001', '52002', '52003', '52004'), 
                                valor  = c(0.67,    0.711,   0.673,   0.663)), 
                           row.names = c(NA,4L), 
                           class = c("tbl_df", "tbl", "data.frame"))
dataset_final_rs = left_join(regioes_saude, dados_mapa_rs, by=c("code_health_region"="codigo"))
mapa(dataset_final_rs, titulo=titulo, subtitulo=subtitulo,nome_variavel='Variável', paleta='RdYlGn')





