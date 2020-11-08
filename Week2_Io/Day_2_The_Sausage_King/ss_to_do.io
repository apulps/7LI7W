# A Fibonacci sequence starts with two 1s. 
# Each subsequent number is the sum of the two numbers that came before: 1, 1, 2, 3, 5, 8, 13, 21, and so on. 
# Write a program to find the nth Fibonacci number. fib(1) is 1 and fib(4) is 3. As a bonus, solve the problem with recursion and with loops.

# Recursion
"Output 1" println
fibRecursion := method(
    nth,
    if(nth == 0) then (return 0) elseif(nth == 1) then (return 1) else(return (fibRecursion(nth - 1) + fibRecursion(nth - 2)))
)

"Fibonacci recursion:" println
fibRecursion(1) println
# ==> 1

fibRecursion(4) println
# ==> 3


fibLoops := method(
    nth,
    if(nth <= 1, return 1)
    previous := 1
    result := 1
    counter := 2
    while(counter < nth, 
        aux := result
        result = result + previous
        previous := aux
        counter = counter + 1
    )
    return result
)

"Fibonacci loops:" println
fibLoops(1) println
# ==> 1

fibLoops(4) println
# ==> 3
"\n" println


# How would you change / to return 0 if the denominator is zero?
"Output 2" println
"Before changing /:" println
(6/2) println
# ==> 3
(6/0) println
# ==> ?

old := Number getSlot("/")

Number / := method(denominator, if(denominator == 0, 0, old(denominator)))

"After changing /:" println
(6/2) println
# ==> 3
(6/0) println
# ==> 0

"" println


# Write a program to add up all of the numbers in a two-dimensional array.
"Output 3" println
addUpAllMatrixNumbers := method(
    matrix,
    result := 0
    matrix foreach(
        i,
        result = result + (i sum)
    )
    return result
)

matrix := matrix := list(list(1, 2, 3), list(4, 5, 6), list(7, 8, 9))
matrix println
addUpAllMatrixNumbers(matrix) println
"" println


# Add a slot called myAverage to a list that computes the average of all the numbers in a list.
# What happens if there are no numbers in a list? (Bonus: Raise an Io exception if any item in the list is not a number.)
"Output 4" println
List myAverage ::= method(
    r := 0
    self foreach(
        i,
        if(i isKindOf(Number), r = r + i, Exception raise("An item of the list is not a number!"))
    )
    return (r/(self size))
)


list(1,2,3,4,5,6) myAverage println
list(5,5,5,5,5) myAverage println
# list(1, 2, 3, "") myAverage
# Exception: An item of the list is not a number!
"" println


# Write a prototype for a two-dimensional list. 
# The dim(x, y) method should allocate a list of y lists that are x elements long. 
# set(x, y, value) should set a value, and get(x, y) should return that value.
"Output 5" println
Array2d := List clone

dim := method(
    x, y,
    Array2d clone setSize(y) mapInPlace(_, List clone setSize(x))
)

Array2d set := method(
    x, y, value,
    self at(y) atPut(x, value)
)

Array2d get := method(
    x, y,
    return (self at(y) at(x))
)

a2d := dim(3, 3)
a2d set(0, 0, 1)
a2d set(1, 1, 2)
a2d set(2, 2, 3)
a2d println

a2d get(1, 1) println
a2d get(1, 2) println
"" println


# Bonus: Write a transpose method so that (new_matrix get(y, x)) == matrix get(x, y) on the original list.
"Output 6" println
Array2d transpose := method(
    aux := dim(size, at(0) size) 
    foreach(
        y, 
        row,
        row foreach(
            x, value, aux set(y, x, value)
        )
    )
    return aux
)

a2d := dim(2, 2)
a2d set(0, 0, 1)
a2d set(0, 1, 2)
a2d set(1, 0, 3)
a2d set(1, 1, 4)
a2d println
a2d transpose println
"" println


# Write the matrix to a file, and read a matrix from a file.
"Output 7" println
file := File clone
file setPath("output_7.txt")
file open write(a2d asString)
file asBuffer println
file close
"" println


# Write a program that gives you ten tries to guess a random number from 1-100. If you would like, give a hint of "hotter" or "colder" after the first guess.
"Output 8" println
random_number := Random value(1, 100) round
# random_number println

i := 0
while(
    i < 10,
    input := File standardInput readLine
    if(input asNumber == random_number) then ("You guessed the number!" println; i = 10) elseif(input asNumber > random_number) then("Colder! Try again!" println) else("Hotter! Try again!" println)
    i = i + 1
)
