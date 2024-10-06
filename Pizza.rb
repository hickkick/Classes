class Pizza
    @@count = 0
    def initialize d, ingredients
        @d = d
        @ingredients = ingredients
        @@count += 1 
        @number = @@count 
    end
end