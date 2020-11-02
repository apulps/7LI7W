# Execute on console (irb)

numbers = {1 => 'one', 2 => 'two'}
# => {1=>"one", 2=>"two"}

numbers[1]
# => "one"

numbers[2]
# => "two"

stuff = {:array => [1, 2, 3], :string => 'Hi, mom!'} # keys are symbols type
# => {:array=>[1, 2, 3], :string=>"Hi, mom!"}

stuff[:string]
# => "Hi, mom!"


###


'string'.object_id
# => 180


'string'.object_id
# => 200

:string.object_id
# => 298588

:string.object_id
# => 298588


###


def tell_the_truth(options={})
    if options[:profession] == :lawyer
        'it could be believed that this is almost certainly not false.'
    else
        true
    end
end
# => :tell_the_truth

tell_the_truth
# => true

tell_the_truth(:profession => :lawyer)
# => "it could be believed that this is almost certainly not false."
