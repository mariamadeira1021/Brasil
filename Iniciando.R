# Conectando com o Git e Github

install.packages("usethis")
library(usethis)
use_git_config(user.name = "mariamadeira1021", user.email = "mariamlmadeira10@gmail.com")

# Criando Repositório e Token

use_git()
library(tidyverse)
library(usethis)
library(gitcreds)
create_github_token()
gitcreds_set()
use_github()

#PRONTO!