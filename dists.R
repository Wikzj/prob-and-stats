# <<<INTRO>>>

# long-storage integer vector:
vector <- c(4L, 7L, 1L, 2L)
vector * 4
length(vector)
class(vector)

#basic operations
10L + 66L 
53.2 - 4  
2.0 * 2L  
3L / 4    
3 %% 2    

(4 * c(1,2,3) - 2) / 2
c(1,2,3,1,2,3) * c(1,2) #???

#built-in character vectors
letters
month.abb

#logic
TRUE | FALSE
TRUE & FALSE 

c('Z', 'a', 'r', 'i', 'f') == "Z"

#for loops
for (i in 1:10) {
  print(i^2)
}
#while loops
a <- 10
while (a > 4) {
  print(a)
  a <- a - 1
}
# if/else
if (5 > 1) {
  print("5 > 1")
} else {
  print("5 < 1")
}

# functions
fun <- function(x) {
  return(x^2)
}
fun(5)

vec2 <- c(4, 7, 1, 2)
which(vec2 %% 2 == 0) 

vec2[1]      
letters[18] 
LETTERS[13] 
month.name[9] 

# grab just the first or last few entries in the vector
head(vec2, 1)
tail(vec2, 2)
# or figure out if a certain value is in the vector
any(vec2 == 7) 
# If an index "goes over" you'll get NA:
vec2[6]  

# built-in functions 
mean(vec2)   
var(vec2)    
sd(vec2)     
max(vec2)    
min(vec2)  
sum(vec2)    

seq(from=0, to=3133, by=133)


# <<< Distributions >>>


#Bernoulli

barplot(c(0.5,0.5), names.arg = c("Heads", "Tails"),col = "gray")

#Binomial

barplot(dbinom(0:20, size=20, prob=0.5),col = "red")

#Geomeetric

#generate 100 random samplings where the probability of success on any given trial is 1/2
sample <- rgeom(100, 1/2)
summary(sample)
sd(sample)
hist(sample, breaks=seq(-0.5,6.5, 1), col='light grey', border='grey', xlab="")

barplot(dgeom(0:100,0.5),col = "red") # probability mass function
plot(pgeom(0:100,0.5)) # cumulative distribution function

#Poisson

#generate 100 random samplings and 3 is lambda
samplep <- rpois(100, 3) 
summary(samplep)
sd(samplep)
hist(samplep, breaks=seq(-0.5,14.5, 1), col='light grey', border='grey', xlab="")

barplot(dpois(0:100, 3),col = "red")
hist(rpois(n = 10000, lambda = 5), col = "thistle")

#Hypergeometric

# dhyper(num of white balls drawn, numb of white balls, num of black balls, num drawn)
dhyper(2,10,10,4) 
barplot(dhyper(0:5,10,90,5),col = "red")

