library(dplyr)

# Definir o diretório onde está o arquivo
setwd("C:/Users/pinhe/Downloads")

# Ler o arquivo
votacao <- read.csv("votacao_secao_2002_MT.csv", header = TRUE, sep = ";", fileEncoding = "latin1")

# Visualizar primeiras linhas
head(votacao)

# Verificar se há NAs
colSums(is.na(votacao))

votacao_limpo <- na.omit(votacao)

# Verifica novamente
colSums(is.na(votacao_limpo))

# Ver quantas linhas foram removidas
nrow(votacao) - nrow(votacao_limpo)

# Salvar como nova planilha
write.csv(votacao_limpo, "votacao_secao_2002_MT_limpo.csv", row.names = FALSE)

# Lista de colunas a remover
colunas_para_remover <- c(
  "DT_GERACAO", "HH_GERACAO", "CD_TIPO_ELEICAO", "CD_ELEICAO", "DS_ELEICAO",
  "DT_ELEICAO", "TP_ABRANGENCIA", "SG_UE", "CD_MUNICIPIO"
)

# Remover as colunas
votacao <- votacao %>% select(-all_of(colunas_para_remover))

# Verificando a colunas da base de dados
colnames(votacao)