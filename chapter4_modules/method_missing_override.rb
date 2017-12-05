# *args sponges up any remaining arguments called

o = Object.new

def o.methodmissing(m,*args)
    puts "you cannot call #{m} on this object, please try again"
end

o.blah