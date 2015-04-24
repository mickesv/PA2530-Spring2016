library(ggplot2)

# Concurrent users in a day
# Some random data
hour <-c(0:24)
users <-c(500,500,500,500,
          800,1200,2000,3000,
          2000,2000,3500,3000,
          5000,4000,4500,6000,
          7000,8000,7500,7000,
          6000,5000,3000,1000,500)

period<-36
month <-c(1:period)
musers<-sample(-200:200,period)
musers
musers<-musers[1:period]+month*200
musers


yr1<-seq(musers[12],musers[12],length.out=period)
yr2<-seq(musers[24],musers[24],length.out=period)

df<-data.frame(month,musers,yr1,yr2)
df2<-data.frame(hour,users)


p<-ggplot(df, aes(x=month,y="Concurrent Users",color=Variable))
p<-p+geom_line(aes(y=musers,col="users"),color="blue")
p<-p+geom_line(aes(y=yr1,col="Year 1"),color="red")
p<-p+geom_line(aes(y=yr2,col="Year 2"),color="red")
pdf(file="FUsersMonth.pdf", width=10, height=6)
p
dev.off()

pp<-ggplot(df2, aes(x=hour,y="Concurrent Users",color=Variable))
pp<-pp+geom_line(aes(y=users,col="users"),color="blue")
pdf(file="FUsersDay.pdf", width=10, height=6)
pp
dev.off()
