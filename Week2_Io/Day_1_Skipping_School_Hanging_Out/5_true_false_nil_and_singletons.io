# Execute on console (io)

4 < 5
# ==> true

4 <= 3
# ==> false

true and false
# ==> false

true and true
# ==> true

true or true
# ==> true

true or false
# ==> true

4 < 5 and 6 > 7
# ==> false

true and 6
# ==> true

true and 0
# ==> true


###


true proto
# ==>  Object_0x10c1840:
#                    = Object_()
#   !=               = Object_!=()
# ...

true clone
# ==> true

false clone
# ==> false

nil clone
# ==> nil

# All of the above are singletons


###


# Singleton creation
Highlander := Object clone
# ==>  Highlander_0x28ccc60:
#   type             = "Highlander"

Highlander clone := Highlander
# ==>  Highlander_0x28ccc60:
#   clone            = Highlander_0x28ccc60
#   type             = "Highlander"


###


Highlander clone
# ==>  Highlander_0x28ccc60:
#   clone            = Highlander_0x28ccc60
#   type             = "Highlander"

fred := Highlander clone
# ==>  Highlander_0x28ccc60:
#   clone            = Highlander_0x28ccc60
#   type             = "Highlander"

mike := Highlander clone
# ==>  Highlander_0x28ccc60:
#   clone            = Highlander_0x28ccc60
#   type             = "Highlander"

fred == mike
# ==> true


###


one := Object clone
# ==>  Object_0x2733598:

two := Object clone
# ==>  Object_0x2738068:

one == two
# ==> false


###


