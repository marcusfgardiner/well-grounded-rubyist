print "Enter a number: "
n = gets.to_i

# Within the begin/ end scope, if an error happens at any point, it runs the rescue statement within that scope
begin
  result = 100 / n
rescue
  puts "Your number didn't work. Was it zero???"
  exit
end

puts "100/#{n} is #{result}."
