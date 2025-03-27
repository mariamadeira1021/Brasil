# Instalar e carregar pacotes
install.packages("readr")
install.packages("dplyr")
install.packages("DT")
install.packages("ggplot2")
library(readr)
library(dplyr)
library(DT)
library(ggplot2)

# Ler o CSV com codificação correta (Windows)
dados <- read.csv("C:/Users/maria/Downloads/base_2002_RN.csv", fileEncoding = "latin1")

# Criar tabela condensada rica em informação com todos os níveis
tabela_resumo_clara <- dados %>%
  group_by(level_3, level_2, level_1, level_0,
           turno, cargo, party_id, votes_type) %>%
  summarise(total_votos = sum(QT_VOTOS, na.rm = TRUE), .groups = "drop") %>%
  