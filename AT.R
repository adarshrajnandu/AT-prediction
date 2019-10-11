data <- read.csv(file = "wc-at.csv")

View(data)
attach(data)

cor(x = Waist,y = AT)

library(psych)

pairs.panels(x = data)

model <- lm(formula = AT ~ Waist, data = data)

model

summary(model)

test_data <- as.data.frame(x = 70)
View(test_data)
colnames(test_data) <- "Waist"

predict(object = model, newdata = test_data)
