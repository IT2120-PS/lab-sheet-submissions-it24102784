setwd("C:\\Users\\it24102784\\Desktop\\IT24102784")

branch_data <-read.csv("Exercise.txt")
head(branch_data)

str(branch_data)

colnames(df)


boxplot(branch_data$Sales_X1,
        main = "Boxplot of Sales",
        ylab = "Sales",
        col = "lightblue",
        border = "darkblue")

summary(branch_data$Advertising)

IQR_advertising <- IQR(branch_data$Advertising)
IQR_advertising



find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_value <- IQR(x)
  lower_bound <- Q1 - 1.5 * IQR_value
  upper_bound <- Q3 + 1.5 * IQR_value
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

outliers_years <- find_outliers(branch_data$Years_X3)
outliers_year
