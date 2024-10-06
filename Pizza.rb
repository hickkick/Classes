class Pizza
    @@count = 0
    def initialize d, ingredients
        @d = d
        @ingredients = ingredients
        @@count += 1 
        @number = @@count 
    end

    def description
        puts "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(',')}]."
    end
end

pizza1 = Pizza.new(24, ['mushroom', 'cheese'])
pizza2 = Pizza.new(25, ['mushroom', 'cheese', 'cherry'])
puts pizza2.description #=>Піца № 1 (діагональ = 25) містить [mushroom,cheese,cherry].