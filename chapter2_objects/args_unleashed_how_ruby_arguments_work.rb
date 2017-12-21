def args_unleashed(a,b=1,*c,d,e)
  puts "Arguments:"
  p a,b,c,d,e
end

# a,d,e take priority as requiring values for method to work, then b=1 does with its default value being overtaken, with nothing left for *c which soaks up the rest
#stays in order, skipping c
args_unleashed(1,2,3,4)

#Enough for all, stays in order because there are enough arguments
args_unleashed(1,2,3,4,5,6,7,8)

#not enough for b=1 or *c, a,d,e take priority
args_unleashed(1,2,3)