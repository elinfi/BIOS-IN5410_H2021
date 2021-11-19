library(tidyverse)

data1 <- read_csv("../data/data_file_1.csv")

# A)

data1 %>% select(Gene)
data1 %>% select(Gene, length)
data1 %>% select(last_col())
data1 %>% select(starts_with('l'))

data1 %>% select(rev(colnames(data1)))

# drop col
data1 %>% select(!length)


# B)
data1 %>% filter(Gene == 'A')
data1 %>% filter(length > 200)
data1 %>% filter(Gene != 'A')

# C)
data1 %>% select(Gene, count) %>% filter(count >= 50)

# D)
mutate(data1, long_genes = length > 200) %>% group_by(long_genes) %>% summarize(mean(length))
