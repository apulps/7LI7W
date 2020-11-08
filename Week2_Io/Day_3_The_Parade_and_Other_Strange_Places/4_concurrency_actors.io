# Execute on console (io)

slower := Object clone
# ==>  Object_0x28646c0:

faster := Object clone
# ==>  Object_0x29b5240:


###


slower start := method(wait(2); writeln("slowly"))
# ==> method(
#     wait(2); writeln("slowly")
# )

faster start := method(wait(1); writeln("quickly"))
# ==> method(
#     wait(1); writeln("quickly")
# )


###


slower start; faster start;
# slowly
# quickly
# ==> nil


###


slower @@start; faster @@start; wait(3)
# quickly
# slowly
# ==> nil
