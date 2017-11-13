puts "reading data in"
    celsius = File.read("temp.dat").to_i
    
    puts "CONVERSION TIME"
    
puts "saving data out"
    fahrenheit = (celsius * 9 / 5)/ + 32
    fh = File.new("tempout2.dat","w")
    fh.puts fahrenheit.to_i
    fh.close
    