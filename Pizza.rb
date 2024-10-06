class Pizza
    @@count = 0
    @@failer_count = 0
    def initialize d, ingredients
        if d == 25 || d == 50
            @d = d
            @ingredients = ingredients
            @@count += 1 
            @number = @@count
        else
            @d = 0
            @number = 0
            @ingredients = []
            @@failer_count += 1
        end 
    end

    def description
        "Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(',')}]."
    end

    def self.failInstance
        @@failer_count
    end
end

pizza1 = Pizza.new(24, ['mushroom', 'cheese'])
pizza2 = Pizza.new(25, ['mushroom', 'cheese', 'cherry'])
puts pizza2.description #=>Піца № 1 (діагональ = 25) містить [mushroom,cheese,cherry].
puts pizza1.description #=>Піца № 0 (діагональ = 0) містить [].
puts Pizza.failInstance