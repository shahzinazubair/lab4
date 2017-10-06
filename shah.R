library(ggplot2)

#TASK1
apm <- matrix(AirPassengers, ncol = 12, byrow =TRUE,  dimnames = list( as.character(1949:1960),month.abb))
Max <- max(apm)
ind = which(apm==Max, arr.ind = TRUE)
sprintf("most profitable month is %s and year is %s", colnames(apm)[ind[2]], rownames(apm)[ind[1]])
plot(AirPassengers, ylab= "Passengers", xlab="Years", type="o", pch=20)

#TASK2
ticket_prices <- 8000
for (i in 2:12) 
{
  ticket_prices[i]<-ticket_prices[i-1]*1.1
}

month_result<-matrix(nrow=12, ncol=12, dimnames = list(as.character(1949:1960), month.abb))
monthly_revenues<-ap*ticket_prices
month_result
Max_month <- max(month_result)
ind1 = which(month_result==Max_month, arr.ind1 = TRUE)

total_passengers<-rowSums(apm)
year_result<-ticket_prices*total_passengers
max_year<-max(year_result)


total_revenue<-sum(year_result)

sprintf(" maximum revenue is %s which is in %s %s", Max_month, colnames(month_result)[ind1[2]], rownames(month_result)[ind1[1]])
sprintf(" yearly maximum revenue is %s which is in %s", max_year, rownames(month_result)[ind1[1]])
sprintf("The total revenue in twelve years is %s", total_revenue)

#TASK3
travel_trend<-colSums(apm)
plot(travel_trend, ylab= "Travelling passengers", xlab="Months", type="o", pch=20)
axis(1, at = month.abb, las=1)
