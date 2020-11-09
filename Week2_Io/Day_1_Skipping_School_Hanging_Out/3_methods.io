# Execute on console (io)

method("So, you've come for an argument." println)
# ==> method(
#     "So, you've come for an argument." println
# )


###


method() type
# ==> Block


###

Vehicle := Object clone
Vehicle description := "Something to take you far away"
Car := Vehicle clone
ferrari := Car clone

Car drive := method("Vroom" println)
# ==> method(
#     "Vroom" println
# )

ferrari drive
# Vroom
# ==> Vroom


###


ferrari getSlot("drive")
# ==> method(
#     "Vroom" println
# )


###


ferrari getSlot("type")
# ==> Car


###


ferrari proto
# ==>  Car_0x2893b20:
#   drive            = method(...)
#   type             = "Car"

Car proto
# ==>  Vehicle_0x27fe228:
#   description      = "Something to take you far away"
#   type             = "Vehicle"


###


Lobby
# ==>  Object_0x6b0e50:
#   Car              = Car_0x2893b20
#   Lobby            = Object_0x6b0e50
#   Protos           = Object_0x6b1000
#   Vehicle          = Vehicle_0x27fe228
#   _                = Object_0x6b0e50
#   exit             = method(...)
#   ferrari          = Car_0x2895710
#   forward          = method(...)
#   set_             = method(...)
