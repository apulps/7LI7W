# Execute on console (io)

Vehicle := Object clone
# ==>  Vehicle_0x28610f0:
#   type             = "Vehicle"

Vehicle description := "Something to take you far away"


###


Car := Vehicle clone
# ==>  Car_0x2931100:
#   type             = "Car"

Car slotNames
# ==> list(type)

Car type
# ==> Car


###


Car description
# ==> Something to take you far away


###


ferrari := Car clone
# ==>  Car_0x29409b8:

ferrari slotNames # There is no type slot because by convention types begin with uppercase
# ==> list()


###


ferrari type
# ==> Car


###


Ferrari := Car clone
# ==>  Ferrari_0x289fd28:
#   type             = "Ferrari"

Ferrari type
# ==> Ferrari

Ferrari slotNames
# ==> list(type)

ferrari slotNames
# ==> list()
