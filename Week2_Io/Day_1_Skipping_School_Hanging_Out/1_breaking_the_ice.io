# Execute on console (io)

"Hi ho, Io" print
# Hi ho, Io==> Hi ho, Io


###


Vehicle := Object clone
# ==>  Vehicle_0x2814058:
#   type             = "Vehicle"


###


Vehicle description := "Something to take you places"
# ==> Something to take you places


###


Vehicle description = "Something to take you far away"
# ==> Something to take you far away

# Vehicle nonexistingSlot = "This won't work."
#   Exception: Slot nonexistingSlot not found. Must define slot using := operator before updating.
#   ---------
#   message 'updateSlot' in 'Command Line' on line 1


###


Vehicle description
# ==> Something to take you far away


###


Vehicle slotNames
# ==> list(description, type)


###


Vehicle type
# ==> Vehicle

Object type
# ==> Object
