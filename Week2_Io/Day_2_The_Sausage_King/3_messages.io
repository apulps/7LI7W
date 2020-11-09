# Execute on console (io)

postOffice := Object clone
# ==>  Object_0x2744648:

postOffice packageSender := method(call sender)
# ==> method(
#     call sender
# )


###


mailer := Object clone
# ==>  Object_0x2888930:

mailer deliver := method(postOffice packageSender)
# ==> method(
#     postOffice packageSender
# )


###


mailer deliver
# ==>  Object_0x2888930:
#   deliver          = method(...)


###


postOffice messageTarget := method(call target)
# ==> method(
#     call target
# )

postOffice messageTarget
# ==>  Object_0x2744648:
#   messageTarget    = method(...)
#   packageSender    = method(...)


###


postOffice messageArgs := method(call message arguments)
# ==> method(
#     call message arguments
# )

postOffice messageName := method(call message name)
# ==> method(
#     call message name
# )

postOffice messageArgs("one", 2, :three)
# ==> list("one", 2, : three)

postOffice messageName
# ==> messageName
