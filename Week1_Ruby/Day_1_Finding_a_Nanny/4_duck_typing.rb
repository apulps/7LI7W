# Execute on console (irb)

4 + 'four'
# => TypeError (String can't be coerced into Integer)

4.class
# => Integer

(4.0).class
# => Float

4 + 4.0
# => 8.0


###


def add_them_up
    4 + 'four'
end
# => :add_them_up

add_them_up
# => TypeError (String can't be coerced into Integer)


###


i = 0
# => 0

a = ['100', 100.0]
# => ["100", 100.0]

while i < 2
    puts a[i].to_i
    i = i + 1
end
# 100
# 100
# => nil
