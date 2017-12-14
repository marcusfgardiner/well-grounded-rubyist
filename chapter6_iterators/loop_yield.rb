#Don't need tio give a value to yield in this case because it doesn't need a value for the code block it will execute
#Unlike iteration, where for each run it wants to print something different


def my_loop
  while true
    yield
  end
end

#my_loop { puts "My-looping forever!" }


#If wanted to loop and print an increasing number, would need to sub this into the code block you feed into the loop code e.g. below
# Whereas with times, each etc, use yield and pull the value intrinsically e.g. times pulls in an increasing number value by itself,
#rather than having to put it into the code block for it to work as below
#e.g. each pulls in each value from an array or other object one by one

#i = 0
#my_loop {|i| puts "My-looping forever! #{i}"
#i += 1}
