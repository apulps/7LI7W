# Execute on console (irb)

3.times {puts 'hiya there, kiddo'}
# hiya there, kiddo
# hiya there, kiddo
# hiya there, kiddo
# => 3


###


animals = ['lions and ', 'tigers and', 'bears', 'oh my']
# => ["lions and ", "tigers and", "bears", "oh my"]

animals.each {|a| puts a}
# lions and
# tigers and
# bears
# oh my
# => ["lions and ", "tigers and", "bears", "oh my"]


###


class Integer
    def my_times
        i = self
        while i > 0
            i = i - 1
            yield
        end
    end
end
# => :my_times

3.my_times {puts 'mangy moose'}
# mangy moose
# mangy moose
# mangy moose
# => nil


###


def call_block(&block)
    block.call
end
# => :call_block

def pass_block(&block)
    call_block(&block)
end
# => :pass_block

pass_block {puts 'Hello, block'}
# Hello, block
# => nil
