module MyFirstModule
    def sayhello
        puts "hello"
    end
end

class ModuleTester
    include MyFirstModule
    
end

class ModuleTesterMini < ModuleTester

end

# class receives all the module methods
mt = ModuleTester.new
mt.sayhello

# subclass also inherits the module methods
mb = ModuleTesterMini.new
mb.sayhello