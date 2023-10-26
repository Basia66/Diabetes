library(neuralnet)

diabetes_train <- read.csv("C:/Users/Basia/Documents/WAT/Metody inteligencji obliczeniowej/lab6/401_diabetes_train.csv", sep=",")
diabetes_test <- read.csv("C:/Users/Basia/Documents/WAT/Metody inteligencji obliczeniowej/lab6/401_diabetes_test.csv", sep=",")

n <- names(diabetes_train)

nn <- neuralnet("positive~.", data = diabetes_train, hidden = c(4, 2), linear.output = F, act.fct = 'logistic', threshold = 0.2)

plot(nn)

pred <- predict(nn, diabetes_test)

t<- table(diabetes_test$positive, pred[, 1] > 0.5)
names(dimnames(t)) <- c("Actual", "Predict")
colnames(t) = c("negative", "positive")
rownames(t) = c("negative", "positive")
t

