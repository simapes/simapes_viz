library(ggplot2)
library(geobr)
library(sf)
library(dplyr)
source("theme_swd.R")

theme_set(theme_swd())

gerar_grafico <- function(data, titulo, subtitulo, x, y) {
  grafico <- ggplot(data=data, aes_string(x=x, y=y))
  grafico <- grafico + ggtitle(titulo, subtitle = subtitulo)
  return(grafico)
}

grafico_barra <- function(data, x, y, orientacao, titulo, subtitulo='', cores=AZUL_SIMAPES, destacar, cor_destaque=1) {
    cores_destaque = c(AZUL_SIMAPES, VERDE_SIMAPES, AMARELO_SIMAPES)
    grafico <- gerar_grafico(data, titulo, subtitulo, x, y)
    if(!missing(destacar)) {
      cores = rep(GRAY4, length(unique(data[, x])))
      cores[destacar] = cores_destaque[cor_destaque]
    }
    grafico <- grafico + geom_bar(stat='identity', fill=cores)
    if (orientacao == 'h') {
      grafico <- grafico + coord_flip()
    }
    
    return(grafico)
}

grafico_linha <- function(data, x, y, titulo, subtitulo='', preencher, linetype='solid', cor=1) {
  cores = c(AZUL_SIMAPES, VERDE_SIMAPES, AMARELO_SIMAPES)
  grafico <- gerar_grafico(data, titulo, subtitulo, x, y)
  
  if(missing(preencher)) {
    grafico <- grafico + geom_line(stat='identity', color=cores[cor], linetype=linetype)
  }
  else {
    grafico <- grafico + geom_area(stat='identity', fill=cores[cor])
  }
  
  return(grafico)
}

mapa <- function(dataset_final, titulo,subtitulo='', nome_variavel='', paleta='Greens') {
  dados <- geom_sf(data=dataset_final, aes(fill=valor))
  
  no_axis <- theme(axis.title=element_blank(),
                   axis.text=element_blank(),
                   axis.ticks=element_blank(),
                   axis.line=element_blank())
  return(ggplot() + 
           dados + 
           scale_fill_distiller(na.value=GRAY10, palette = paleta, 
                                limits=c(min(dataset_final[['valor']], na.rm=TRUE), max(dataset_final[['valor']], na.rm=TRUE)),
                                name=nome_variavel) + 
    labs(title=titulo, subtitle=subtitulo) + no_axis)
  
}
