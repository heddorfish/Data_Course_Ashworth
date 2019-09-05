output:
  pdf_document: default
html_document: default
---
  ## Exercise 1
  
  If:
  ```{r}
seq(1,10,by=2)
```
**Then what will be the value of:**
  ```{r, eval=FALSE, include=TRUE}
seq(1,10,by=3)
```


## Exercise 2

**Use the seq() function to generate the sequence  9, 18, 27, 36, 45.**
seq(9,45, by=9)  
  
  ## Exercise 3
  
  If:
  ```{r}
seq(1,10,length.out = 5) # length.out = 5 divides the interval into 5 units
```
**Then what will be the value of:**
  ```{r, include=TRUE,eval=FALSE}

seq(1,10, length.out = 3) # it will divide the interval into 3 portions
```


## Exercise 4

If:
  ```{r}

rm (x)


x = 1:5
rep(x,2) #takes the vector and doubles the whole list
```
...And:
  ```{r}

rep(x,2, each=2) # the each = 2 doubles each number int the vector and and the "2" doubles the string

rep(x,2, each=3) # the each = 3 triples each number int the vector and and the "2" doubles the string


**What will be the value of:**
  ```{r, include=TRUE, eval=FALSE}

rep(x,each=4)  # the each = 4 triples each number int the vector 

```
rm(x)

## Exercise 5

If:
  ```{r}
x = "Hip"
y = "Hooray"
```
**Then what is the value of:**
  ```{r, include=TRUE,eval=FALSE}
rep(c(rep(x,2),y),3) # doubles the x vector and combines with y vector and then repeats it 3 times
# YEAH!!

```
## Exercise 6
**Create a sequence with values (in this order):**
  100 95 90 85 80 75 70 65 60 55 50

z=50:100
rev(50:100)
rev(50:100, by=5)
rev(50:100 by=5)
rev(50,100,length.out=11)


a = seq(50,100, by = 5)
rev(a)  #Both steps are the correct step

## Exercise 7
If:
  ```{r}
Semester_Start = as.Date("2019-08-19")
Semester_End = as.Date("2019-12-05")
seq(Semester_Start,Semester_End,by="week")
```

**Then what would be the value of "midterm" when:**
  ```{r, include=TRUE,eval=FALSE}
midterm = seq(Semester_Start,Semester_End,length.out = 3)[2] #The 2 means that you want the second time points
```
