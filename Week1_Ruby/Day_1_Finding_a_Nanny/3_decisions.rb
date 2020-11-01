# Execute on console (irb)

x = 4 
# => 4

x < 5 
# => true

x <= 4 
# => true

x > 4 
# => false

false.class 
# => FalseClass

true.class 
# => TrueClass


###


x = 4 
# => 4

puts 'This appears to be false.' unless x == 4 
# => nil

puts 'This appears to be true.' if x == 4 
# => This appears to be true. \n nil

if x == 4
    puts 'This appears to be true.'
end
# => This appears to be true. \n nil

unless x == 4
    puts 'This appears to be false.'
else
    puts 'This appears to be true.'
end
# => This appears to be true. \n nil

puts 'This appears to be true.' if not true
# => nil

puts 'This appears to be tru
e.' if !true
# => nil

###


x = x + 1 while x < 10
# => nil

x
# => 10

x = x - 1 until x == 1
# => nil

x
# => 1

while x < 10
    x = x + 1
    puts x
end
# => 2 => 3 => 4 => 5 => 6 => 7 => 8 => 9 => 10 => nil


###


puts 'This appears to be true.' if 1
# => This appears to be true. => nil

puts 'This appears to be true.' if 'random string'
# => (irb):47: warning: string literal in condition
# => This appears to be true. => nil

puts 'This appears to be true.' if 0
# => This appears to be true. => nil

puts 'This appears to be true.' if true
# => This appears to be true. => nil

puts 'This appears to be true.' if false
# => nil

puts 'This appears to be true.' if nil
# => nil


###


true and false
# => false

true or false
# => true

false && false
# => false

true && this_will_cause_an_error
# => NameError (undefined local variable or method `this_will_cause_an_error' for main:Object)

false && this_will_not_cause_an_error
# => false

true or this_will_not_cause_an_error
# => true

true || this_will_not_cause_an_error
# => true

true | this_will_cause_an_error
# => NameError (undefined local variable or method `this_will_cause_an_error' for main:Object)

true | false
# => true
