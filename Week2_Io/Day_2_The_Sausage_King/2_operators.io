# Execute on console (io)

OperatorTable
# ==> OperatorTable_0x264cdc8:
# Operators
#   0   ? @ @@
#   1   **
#   2   % * /
#   3   + -
#   4   << >>
#   5   < <= > >=
#   6   != ==
#   7   &
#   8   ^
#   9   |
#   10  && and
#   11  or ||
#   12  ..
#   13  %= &= *= += -= /= <<= >>= ^= |=
#   14  return

# Assign Operators
#   ::= newSlot
#   :=  setSlot
#   =   updateSlot

# To add a new operator: OperatorTable addOperator("+", 4) and implement the + message.
# To add a new assign operator: OperatorTable addAssignOperator("=", "updateSlot") and implement the updateSlot message.


###


OperatorTable addOperator("xor", 11)
# ==> OperatorTable_0x264cdc8:
# Operators
#   ...
#   10  && and
#   11  or xor ||
#   12  ..
#   ...


###


true xor := method(bool, if(bool, false, true))
# ==> method(bool,
#     if(bool, false, true)
# )

false xor := method(bool, if(bool, true, false))
# ==> method(bool,
#     if(bool, true, false)
# )


###


true xor true
# ==> false

true xor false
# ==> true

false xor true
# ==> true

false xor false
# ==> false
