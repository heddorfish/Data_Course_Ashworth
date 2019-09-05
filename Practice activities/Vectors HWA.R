x <- c(4,6,5,7,10,9,4,15)
c(4,6,5,7,10,9,4,15) < 7
 x<- c(4,6,5,7,10,9,4,15)
c(4,6,5,7,10,9,4,15) < 7
p <- c(3, 5, 6, 8)
q <- c(3, 3, 3)
p + q
w <- c(1, 2, 3)
p + w
a <- c(1,3,4,7,10,0)
b <- c (1,2)
a + b
z <- 0:9

digits <- as.character(z) # makes numbers characters
as.integer(digits)  #makes characters integers
as.integer(digits)
toes <- as.character(p)
as.integer(toes)
rm(x)



## Exercise 5

**Consider the vector:**
  
  x <- c(1,2,3,4)

**What is the value of k for:**
  
  (x+2)[(!is.na(x)) & x > 0] -> k

a. 1, 2, 3, 4

b. 1, 4, 9, 16

c. Error: object 'k' not found

d. 3, 4, 5, 6

e. numeric(0)


## Exercise 6 #WE ARE STUCK

**Consider the following vectors:**
  
  s = c("a","b",'c',"d","e")
s + 3
l+3
as.integer(!is.na(s)) -> m
m + 3
t = c("f","g","h","i","j")

**What is the value of s+3 ?** #No value because cant add characters and numbers
  
  **What command would you use to combine them into a single vector in alphabetical order?**
  
  #c(s,t) gives you the answer
  
  ## Exercise 7
  
  **Consider the following vectors:**
  
  rm(s)
  
  s = c("a","b",'c',"d","e")

v = 1:5

**if:**
  
  z = c(s,v)

**What is the value of z[5:10] ?**
  
  z[5:10]
  
  a.
1,2,3,4,5

b.
"a","b","c","d","e"

c.
"1","2","3","4","5"

d.
"e","1","2","3","4"

