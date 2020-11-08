# Execute on console (io)

# loop("getting dizzy..." println)


###


i := 1
# ==> 1

while(i <= 11, i println; i = i + 1); "This one goes up to 11" println
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10
# 11
# This one goes up to 11
# ==> This one goes up to 11


###


for(i, 1, 11, i println); "This one goes up to 11" println
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10
# 11
# This one goes up to 11
# ==> This one goes up to 11


###


for(i, 1, 11, 2, i println); "This one goes up to 11" println
# 1
# 3
# 5
# 7
# 9
# 11
# This one goes up to 11
# ==> This one goes up to 11


###


for(i, 1, 2, 1, i println, "extra argument")
# 1
# 2
# ==> 2

for(i, 1, 2, i println, "extra argument")
# 2
# ==> extra argument


###


if(true, "It is true", "It is false")
# ==> It is true

if(false) then("It is true") else("It is false")
# ==> nil

if(false) then("It is true" println) else("It is false" println)
# It is false
# ==> nil
