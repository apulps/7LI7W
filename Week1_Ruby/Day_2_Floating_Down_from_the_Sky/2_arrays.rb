# Execute on console (irb)

animals = ['lions', 'tigers', 'bears']
# => ["lions", "tigers", "bears"]

puts animals
# lions
# tigers
# bears
# => nil

animals[0]
# => "lions"

animals[2]
# => "bears"

animals[10]
# => nil

animals[-1]
# => "bears"

animals[-2]
# => "tigers"

animals[0..1]
# => ["lions", "tigers"]

(0..1).class
# => Range


###


a[0] = 0
# NameError (undefined local variable or method `a' for main:Object)

a = []
# => []


###


[1].class
# => Array

[1].methods.include?(:[])
# => true


###


a[0] = 'zero'
# => "zero"

a[1] = 1
# => 1

a[2] = ['two', 'things']
# => ["two", "things"]

a
# => ["zero", 1, ["two", "things"]]


###


a = [[1, 2, 3], [10, 20, 30], [40, 50, 60]]
# => [[1, 2, 3], [10, 20, 30], [40, 50, 60]]

a[0][0]
# => 1

a[1][2]
# => 30


###


a = [1]
# => [1]

a.push(1)
# => [1, 1]

a = [1]
# => [1]

a.push(2)
# => [1, 2]

a.pop
# => 2

a.pop
# => 1
