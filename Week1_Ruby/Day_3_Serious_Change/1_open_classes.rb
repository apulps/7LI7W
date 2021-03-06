# ruby/blank.rb
class NilClass
    def blank?
        true
    end
end

class String
    def blank?
        self.size == 0
    end
end

["", "person", nil].each do |element|
    puts element unless element.blank?
end


# ruby/units.rb
class Numeric
    def inches
        self
    end

    def feet
        self * 12.inches
    end

    def yard
        self * 3.feet
    end

    def miles
        self * 5280.feet
    end

    def back
        self * -1
    end

    def forward
        self
    end
end

puts 10.miles.back
puts 2.feet.forward
