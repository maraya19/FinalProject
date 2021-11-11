## Final Project data gathering
## read contents into dataframe
music <- read.csv("spotifytoptracks.csv", stringsAsFactors = TRUE)
str(music)
summary(music)
hist(music$tempo,breaks = 15)
boxplot(music$tempo , ylab="Tempo")
plot(y= music$tempo , x= music$artist, ylab = "Tempo" ,xlab="Artist")
music_model <- lm(tempo~. , data = music)
summary(music_model)
