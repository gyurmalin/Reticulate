

#https://rstudio.github.io/reticulate/

install.packages("reticulate")

library(reticulate)

os <- import("os")
os$listdir(".")

repl_python()

import pandas

flights = pandas.read_csv("flights.csv")
flights = flights[flights["dest"] == "ORD"]
flights = flights[["carrier", "dep_delay", "arr_delay"]]
flights = flights.dropna()
exit

library(ggplot2)
ggplot(py$flights, aes(carrier, arr_delay)) + geom_point() + geom_jitter()
