# Self-study Day 1

* Evaluate ```1 + 1``` and then ```1 + "one"```. Is Io strongly typed or weakly typed? Support your answer with code.

Io is a strongly typed language, the type of a value won't change in unexpected ways.
In the next example we will see that in order to use the ```+``` operator between a Number and a Sequence, both must have the same type.
```Io
a := 2
# ==> 2

a type
# ==> Number

b := "5"
# ==> 5

b type
# ==> Sequence

a + b
#   Exception: argument 0 to method '+' must be a Number, not a 'Sequence'
#   ---------
#   message '+' in 'Command Line' on line 1

aux := b asNumber
# ==> 5

aux type
# ==> Number

a + aux
# ==> 7
```

---

* Is 0 true or false? What about the empty string? Is nil, true or false? Support your answer with code.

Both 0 and an empty string are considered true.
```Io
0 and true
# ==> true

"" and true
# ==> true

nil and true
# ==> false
```

---

* How can you tell what slots a prototype supports?

You can check the slots that a prototype supports with ```prototype slotNames size```.
```Io
Object slotNames size
# ==> 135

Number slotNames size
# ==> 91
```

---

* What is the difference between ```=``` (equals), ```:=``` (colon equals), and ```::=``` (colon colon equals)? When would you use each one?

```:=``` (colon equals) is used to create a slot and also to assign value.
```Io
var := 1
```

```=``` (equals) is used to assign a value to a slot if it exists, otherwise raises exception.
```Io
var_2 = 1
#   Exception: Slot var_2 not found. Must define slot using := operator before updating.
#   ---------
#   message 'updateSlot' in 'Command Line' on line 1

var = 2
# ==> 2
```
 

```::=``` (colon colon equals) is used to create a slot, create a setter and assing value.
```Io
Person := Object clone do(age ::= nil)
# ==>  Person_0x27b8fb8:
#   age              = nil
#   setAge           = method(...)
#   type             = "Person"

person := Person clone
# ==>  Person_0x28d5d70:

person setAge(32)
# ==>  Person_0x28d5d70:
#   age              = 32

person age
# ==> 32
```
