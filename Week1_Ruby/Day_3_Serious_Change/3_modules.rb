# ruby/acts_as_csv_class.rb
class ActAsCsv
    def read
        file = File.new(self.class.to_s.downcase + '.txt')
        @headers = file.gets.chomp.split(', ')

        file.each do |row|
            @result << row.chomp.split(', ')
        end
    end

    def headers
        @headers
    end

    def csv_content
        @result
    end

    def initialize
        @result = []
        read
    end
end

class RubyCsv < ActAsCsv
end

m = RubyCsv.new

puts m.headers.inspect
puts m.csv_content.inspect
puts
puts

# ruby/acts_as_csv.rb
class ActAsCsv
    def self.acts_as_csv

        define_method 'read' do
            file = File.new(self.class.to_s.downcase + '.txt')
            @headers = file.gets.chomp.split(', ')

            file.each do |row|
                @result << row.chomp.split(', ')
            end
        end

        define_method "headers" do
            @headers
        end

        define_method "csv_content" do
            @result
        end

        define_method 'initialize' do
            @result = []
            read
        end
    end
end

class RubyCsv < ActAsCsv
    acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_content.inspect
puts
puts


# ruby/acts_as_csv_module.rb
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
                @csv_content << row.chomp.split(', ')
            end
        end

        attr_accessor :headers, :csv_contents
        def initialize
            read
        end
    end
end

class RubyCsv # no inheritance! You can mix it in
    include ActsAsCsv
    acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_content.inspect
