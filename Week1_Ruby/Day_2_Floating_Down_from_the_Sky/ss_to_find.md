# Self-study Day 2

* Find out how to access files with and without code blocks. What is the benefit of the code block?
  - https://rubyapi.org/2.7/o/io#method-i-read
```ruby
open("ss_to_find.md") do |f|
    f.read # reads all the file
end
```
```ruby
open("ss_to_find.md") do |f|
    f.readline # reads only one line of the file, the first in this case
end
```
```ruby
File.open("ss_to_find.md", 'r') {|f| f.read}
```
```ruby
File.open("ss_to_find.md", 'r') {|f| f.readline}
```

The benefit of the code block is that it allows you to execute operations in one line in a readable way, such as taking the sixth character of each line of the file and print it:
```ruby
File.open("ss_to_find.md", 'r') {|f| f.readlines.each {|l| puts l[5]}}
```

---

* How would you translate a hash to an array? Can you translate array to hashes?
  - https://ruby-doc.com/core/Array.html#method-i-to_h
  - https://ruby-doc.com/core/Hash.html#method-i-to_a

Checking the mixins that both ```Hash``` and ```Array``` data structures have in Ruby we can see that both of them have a method for translation:
```ruby
# Translating an array to a hash
{"grandpa"=>73, "dad"=>45, "child"=>10}.to_a
# => [["grandpa", 73], ["dad", 45], ["child", 10]]

# Translating a hash to an array
[["grandpa", 73], ["dad", 45], ["child", 10]].to_h
# => {"grandpa"=>73, "dad"=>45, "child"=>10}
```

---

* Can you iterate through a hash?
  - https://ruby-doc.com/core/Hash.html#method-i-each

```ruby
{1 => 'one', 2 => 'two', 3 => 'three'}.each
# => #<Enumerator: {1=>"one", 2=>"two", 3=>"three"}:each>

{1 => 'one', 2 => 'two', 3 => 'three'}.each {|e| puts e}
# 1
# one
# 2
# two
# 3
# three
# => {1=>"one", 2=>"two", 3=>"three"}
```

---

* You can use Ruby arrays as stacks. What other common data structures do arrays support?

You can use arrays also as queues, linked lists, BST... Almost any kind of data structure.
