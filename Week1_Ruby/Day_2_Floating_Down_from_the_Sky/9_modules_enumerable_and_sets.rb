# Execute on console (irb)

'begin' <=> 'end'
# => -1

'same' <=> 'same'
# => 0

a = [5, 3, 4, 1]
# => [5, 3, 4, 1]

a.sort
# => [1, 3, 4, 5]

a.any? {|i| i > 6}
# => false

a.any? {|i| i > 4}
# => true

a.all? {|i| i > 4}
# => false

a.all? {|i| i > 0}
# => true

a.collect {|i| i * 2}
# => [10, 6, 8, 2]

a.select {|i| i % 2 == 0} # even
# => [4]

a.select {|i| i % 2 == 1} # odd
# => [5, 3, 1]

a.max
# => 5

a.member?(2)
# => false


###


a
# => [5, 3, 4, 1]

a.inject(0) {|sum, i| sum + i}
# => 13

a.inject {|sum, i| sum + i}
# => 13

a.inject {|product, i| product * i}
# => 60


###


a.inject(0) do |sum, i|
    puts "sum: #{sum}  i: #{i}   sum + i: #{sum + i}"
    sum + i
end
# sum: 0  i: 5   sum + i: 5
# sum: 5  i: 3   sum + i: 8
# sum: 8  i: 4   sum + i: 12
# sum: 12  i: 1   sum + i: 13
# => 13
