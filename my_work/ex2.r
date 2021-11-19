files <- list.files("../data/", full.names=TRUE)

data1 <- read_csv(files[1])
data2 <- read_csv(files[2], col_names=FALSE)
data3 <- read_delim(files[3], delim=';')
