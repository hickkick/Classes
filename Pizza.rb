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