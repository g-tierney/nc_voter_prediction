require(tidyverse)

data_aoas <- read_csv("data/voter-aoas-2018.csv") %>% group_by(id)
dups <- duplicated(data_aoas$id)
n.dups <- dups %>% sum
n.unique <- nrow(data_aoas) - n.dups

data_aoas %>% filter(n() > 1) %>% View


data_full <- read_csv("data/ncvoter-20130801.csv")
data_full %>% head
data_full$voter_reg_num[duplicated(data_full$voter_reg_num)]

sample <- read_delim("data/ncvoter_Statewide.txt",delim = "\t")
sample %>% filter(last_name == "TIERNEY" & first_name == "GRAHAM") %>% View
