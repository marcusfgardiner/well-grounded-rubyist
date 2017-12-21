def block_args_unleashed
    yield(1,2,3,4,5)
end

#Call the method that includes yielding to a block with arguments 1,2,3,4,5
block_args_unleashed {|a,b=1,*c,d,e|
    puts "Arguments:"
    p a,b,c,d,e }
