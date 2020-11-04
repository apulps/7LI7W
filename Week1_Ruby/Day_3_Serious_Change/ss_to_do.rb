# Modify the CSV application to support an each method to return a CsvRow object. 
# Use method_missing on that CsvRow to return the value for the column for a given heading.
module ActsAsCsv
    def self.included(base)
        base.extend ClassMethods
    end

    module ClassMethods
        def acts_as_csv
            include InstanceMethods
        end
    end

    module InstanceMethods
        def read
            @csv_contents = []
            filename = self.class.to_s.downcase + '.txt'
            file = File.new(filename)
            @headers = file.gets.chomp.split(', ')

            file.each do |row|
                @csv_contents << CsvRow.new(row.chomp.split(', '), @headers) # Every row now is a CsvRow object
            end
        end
        
        attr_accessor :headers, :csv_contents
        def initialize
            read
        end

        def each(&block) # New each method to return CsvRow objects
            @csv_contents.each(&block)
        end
    end
end


class CsvRow # New CsvRow class
    def initialize row, headers
        @row = row
        @headers = headers
    end

    def method_missing name, *args
        index = @headers.index(name.to_s)
        @row[index]
    end
end


class RubyCsv
    include ActsAsCsv
    acts_as_csv
end


m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect # Now each element is a CsvRow object
m.each {|row| puts row.Field1}
m.each {|row| puts "Field1: #{row.Field1}, Field2: #{row.Field2}, Field3: #{row.Field3}"}
