data <- rbind(kkbox_churn_sample, kkbox_notchurn_sample)
d=subset(data, data[,4] >10 & data[,4] <90)

scatter.smooth(x=d$is_churn, y=d$bd, main="d$is_churn ~ d$bd")
my.model <- lm(is_churn ~ city+bd +gender+registered_via+num_unq, data = d)
summary(my.model)
scatter.smooth(x=d$num_unq, y=d$is_churn, main="churn ~ no. songs")
