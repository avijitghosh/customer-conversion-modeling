##################################################
#     Customer Conversion Modeling in R         #
#################################################

#Question- 1
myData <- read.csv("marketing_conversion_data.csv")
str(myData)
sum(is.na(myData))

#Question- 2
lpmModel <- lm(convert ~ discount_pct + email_opens + income + loyalty_yrs + site_mins, data = myData)
flextable::as_flextable(lpmModel)

#Question- 3
logisticModel <- glm(convert ~ discount_pct + email_opens + income + loyalty_yrs + site_mins, data = myData, family = binomial)
flextable::as_flextable(logisticModel)

#Question- 4
odds_ratio <- exp(coef(logisticModel))
odds_ratio

# discount_pct
(1.089919456 - 1)*100

# email_opens
(1.599930641 - 1)*100

# income
(0.984914244 - 1)*100

# loyalty_yrs
(0.982587189 - 1)*100

# site_mins
(1.090604237 - 1)*100

#Question- 5
New_Data <- data.frame(discount_pct = c(10, 28),
                       email_opens  = c(3, 9),
                       income       = c(55, 45),
                       loyalty_yrs  = c(1, 2),
                       site_mins    = c(6, 14))
pred_lpm <- predict(lpmModel, newdata = New_Data, type = "response")
pred_lpm
pred_logistic <- predict(logisticModel, newdata = New_Data, type = "response")
pred_logistic

# Predicted Binary Outcome
binary_lpm <- ifelse(pred_lpm >= 0.5, 1, 0)
binary_lpm
binary_logistic <- ifelse(pred_logistic >= 0.5, 1, 0)
binary_logistic

#Question- 6
pHatLin <- predict(lpmModel, type = "response")
yHatLin <- ifelse(pHatLin >= 0.5, 1, 0)
pHatLog <- predict(logisticModel, type = "response")
yHatLog <- ifelse(pHatLog >= 0.5, 1, 0)

mean(myData$convert == yHatLin)*100
mean(myData$convert == yHatLog)*100

#Question- 7
sim_data <- data.frame(email_opens = seq(from = 0, to = 12, by = 2),
                       discount_pct = mean(myData$discount_pct),
                       income = mean(myData$income),
                       loyalty_yrs = mean(myData$loyalty_yrs),
                       site_mins = mean(myData$site_mins))

# Predicting the convertion useing the simulated data
sim_lpm_pred <- predict(lpmModel, newdata = sim_data, type = "response")
sim_lpm_pred
sim_logistic_pred <- predict(logisticModel, newdata = sim_data, type = "response")
sim_logistic_pred

# integrating the prediction in the data
data.frame(sim_data, Sim_LPM_Pred = sim_lpm_pred,
           Sim_LOGISTIC_pred = sim_logistic_pred)

#Question- 8
training_data   <- myData[1:400, ]
validation_data <- myData[401:800, ]

Model_1 <- glm(convert ~ discount_pct + email_opens + income + loyalty_yrs + site_mins,
               family = binomial, data = training_data)
flextable::as_flextable(Model_1)
Model_2 <- glm(convert ~ discount_pct + email_opens + income, family = binomial, data = training_data)
flextable::as_flextable(Model_2)

pHat_1 <- predict(Model_1, newdata = validation_data, type = "response")
yHat_1 <- ifelse(pHat_1 >= 0.5, 1, 0)
pHat_2 <- predict(Model_2, newdata = validation_data, type = "response")
yHat_2 <- ifelse(pHat_2 >= 0.5, 1, 0)

mean(validation_data$convert == yHat_1)*100
mean(validation_data$convert == yHat_2)*100

#Question- 9
AIC(Model_1)
AIC(Model_2)
