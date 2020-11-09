# Execute with: ~/io.exe 5_concurrency_futures.io

futureMethod := method(
    wait(3);
    return "futureMethod!"
)
result := Sequence clone
result = @futureMethod

###


writeln("Do something immediately while futureMethod goes on in background...")
# ...


###


writeln("This will block until the result is available.")
# this line will execute immediately

writeln("Finished ", result)
# this will block until the computation is complete
# and Io prints the value
