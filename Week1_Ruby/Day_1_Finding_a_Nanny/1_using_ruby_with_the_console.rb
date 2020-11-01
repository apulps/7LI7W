# Execute on console (irb)

puts 'hello, friend'
# => hello, friend => nil

language = 'Ruby'
# => "Ruby"

# One quote - This line is interpreted literally
puts 'hello, #{language}'
# => hello, #{language}

# Two quotes - This line leads to string evaluation
puts "hello, #{language}"
# => hello, Ruby => nil

language = 'my Ruby'
# => "my Ruby"

puts "hello, #{language}"
# => hello, my Ruby => nil
