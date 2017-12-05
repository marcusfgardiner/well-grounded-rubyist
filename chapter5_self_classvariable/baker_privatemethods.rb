class Cake
    def initialize(batter)
        @batter = batter
        @baked = true
    end
end

class Egg
end

class Flour
end

class Baker
    def bake_cake
        #Within this method definition inside a class - self is an instance of baker
        #Therefore, don't need to specify who is being sent the message (i.e. who.method), as without specifying it will be sent to 'self'. 
        #Same as caling self.pour_flour - BUT as its a private method, Ruby forbids any explicit receiver of any kind - so it defaults to 'self.method' by force
        @batter = []
        pour_flour
        add_egg
        stir_batter
        return Cake.new(@batter)
    end
    
    def pour_flour
        @batter.push(Flour.new)
    end
    def add_egg
        @batter.push(Egg.new)
    end
    def stir_batter
    end
    private :pour_flour, :add_egg, :stir_batter
end

######## This won't work due to private method
#b = Baker.new
#b.add_egg