Fizyka = c(70,71,72,73,68,69,65,69,80,68)
Matematyka = c(91,92,93,94,65,69,61,55,91,79)
Angielski = c(82,83,84,85,73,66,50,62,95,68)
DostałSięNaStudia = c(1,1,1,1,0,0,0,0,1,0)

newdata <- data.frame(Fizyka, Matematyka, Angielski,DostałSięNaStudia)

softplus <- function(x) log(1 + exp(x))

# podczas uruchamiania kolejnych wykresow zmieniałysmy wartosci w hidden
nn <- neuralnet("DostałSięNaStudia~.", data = newdata, hidden = c(2, 1), linear.output = F, act.fct = softplus)

plot(nn)

