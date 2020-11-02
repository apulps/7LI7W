# Execute on console (irb)

4.class
# => Integer

4.class.superclass
# => Numeric

4.class.superclass.superclass
# => Object

4.class.superclass.superclass.superclass
# => BasicObject

4.class.superclass.superclass.superclass.superclass
# => nil


###


4.class.class
# => Class

4.class.class.superclass
# => Module

4.class.class.superclass.superclass
# => Object