# Run an Io program from a file.
/*
To execute an Io program from a file you just need to give the executable the name of the file as a parameter.

~\Week2_Io\Day_1_Skipping_School_Hanging_Out>path_to_io_exe\io.exe filename.io 
*/


# Execute the code in a slot given its name.
punch := method("POW!" println)
# ==> method(
#     "POW!" println
# )

drive := method("Vroom" println)
# ==> method(
#     "Vroom" println
# )

invoke_by_name := method(name_of_method, self getSlot(name_of_method) call)
# ==> method(name_of_method,
#     self getSlot(name_of_method) call
# )

invoke_by_name("drive")
# Vroom
# ==> Vroom

invoke_by_name("punch")
# POW!
# ==> POW!
