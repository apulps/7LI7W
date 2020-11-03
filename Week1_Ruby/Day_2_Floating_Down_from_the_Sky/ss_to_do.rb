# Print the contents of an array of sixteen numbers, four numbers at a time, using just each. Now, do the same with each_slice in Enumerable.
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

## Using each
i = 1
nums = []
numbers.each do |num|
    nums.push(num)
    if i % 4 == 0
        puts "#{nums}"
        nums = []
    end
    i = i + 1
end

## Using each_slice
numbers.each_slice(4) {|slice| puts "#{slice}"}
puts
puts


# The Tree class was interesting, bit it did not allow you to specify a new tree with a clean user interface. 
# Let the initializer accept a nested structure of hashes. You should be able to specify a tree like this:
# {'grandpa' => {'dad' => {'child1' => {}, 'child2' => {} }, 'uncle' => {'child3' => {}, 'child4' => {} }}}
class Tree
    attr_accessor :children, :node_name

    def initialize(tree={})
        @children = tree.values[0]
        @node_name = tree.keys
    end

    def visit_all(&block)
        visit &block
        children.each_pair {|k, v| Tree.new({k => v}).visit_all &block}
    end

    def visit(&block)
        block.call self
    end
end

ruby_tree = Tree.new({'grandpa' => {'dad' => {'child1' => {}, 'child2' => {} }, 'uncle' => {'child3' => {}, 'child4' => {} }}})

puts 'Visiting a node'
ruby_tree.visit {|node| puts node.node_name}
puts

puts 'Visiting entire tree'
ruby_tree.visit_all {|node| puts node.node_name}
puts
puts

# Write a simple grep that will print the lines of a file having any occurences of a phrase anywhere in that line. 
# You will need to do a simple regular expression match and read lines from a file. (This is surprisingly simple in Ruby.) If you want, include line numbers.

File.open("ss_to_do_sample_file.txt", "r") {|f| f.readlines.each_with_index {|l, number| if l.match("This line will trigger.") then puts "Line N-#{number + 1} -> #{l}" end}}
