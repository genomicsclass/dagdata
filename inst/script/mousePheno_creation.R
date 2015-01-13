##Read in data
all <- read.csv("../extdata/mice_pheno.csv")
##sub populations
ind1 <- which(all$Diet=="chow" & all$Sex=="F")
ind2 <- which(all$Diet=="hf" & all$Sex=="F")

##set seed for reproducibility
set.seed(1)

##pick 12 mice from each group
N=12
dat <- all[c(sample(ind1,N),sample(ind2,N)),c("Diet","Bodyweight")]
##checks
##print(t.test(dat[1:12,2],dat[13:24,2]))
##boxplot(dat[,2]~dat[,1])

write.csv(dat,file="../extdata/miceweights.csv",row.names=FALSE,quote=FALSE)
###write out the enitre population
write.csv(all[ind1,],file="../extdata/population.csv",row.names=FALSE,quote=FALSE)

