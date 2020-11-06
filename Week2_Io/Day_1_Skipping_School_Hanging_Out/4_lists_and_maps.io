# Execute on console (io)

toDos := list("find my car", "find Continuum Transfuctioner")
# ==> list(find my car, find Continuum Transfuctioner)

toDos size
# ==> 2

toDos append("Find a present")
# ==> list(find my car, find Continuum Transfuctioner, Find a present)


###


list(1, 2, 3, 4)
# ==> list(1, 2, 3, 4)


###


list(1, 2, 3, 4) average
# ==> 2.5

list(1, 2, 3, 4) sum
# ==> 10

list(1, 2, 3) at(1)
# ==> 2

list(1, 2, 3) append(4)
# ==> list(1, 2, 3, 4)

list(1, 2, 3) pop
# ==> 3

list(1, 2, 3) prepend(0)
# ==> list(0, 1, 2, 3)

list() isEmpty
# ==> true


###


elvis := Map clone
# ==>  Map_0x282c8e8:

elvis atPut("home", "Graceland")
# ==>  Map_0x282c8e8:

elvis at("home")
# ==> Graceland

elvis atPut("style", "rock and roll")
# ==>  Map_0x282c8e8:

elvis asObject
# ==>  Object_0x29282d8:
#   home             = "Graceland"
#   style            = "rock and roll"

elvis asList
# ==> list(list(home, Graceland), list(style, rock and roll))

elvis keys
# ==> list(home, style)

elvis size
# ==> 2
