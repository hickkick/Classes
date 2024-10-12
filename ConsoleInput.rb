module ConsoleInput

    def string
        puts 'Enter any string'
        ARGV[0]
    end

    def number
        puts 'Enter any number'
        if (ARGV[0]).include?('.') || (ARGV[0]).include?(',')
            Float(ARGV[0])
        else
            Integer(ARGV[0])
        end
    end

    def symbol
        puts 'Enter any letters'
        (ARGV[0]).to_sym
    end

    def hash
        puts "Enter hash in format 'key: value' or 'key => value'"
        result = Hash.new
        if (ARGV[0]).include?(':') || (ARGV[0]).include?('=>') 
          str = (ARGV[0]).scan(/\w+/)
          result[str[0]] = str[1]
        end
        result
    end
end