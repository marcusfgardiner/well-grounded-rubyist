
def fussy_method(x)
  raise ArgumentError, "I need a number under 10" unless x < 10
end

# Rescue prevents code exiting out despite error being raised

begin
  fussy_method(20)
rescue ArgumentError
  puts "That was not an acceptable number!"
end


begin
  fussy_method(20)
  rescue ArgumentError => e
  puts "That was not an acceptable number!"
  puts "Here's the backtrace for this exception:"
  puts e.backtrace
  puts "And here's the exception object's message:"
  puts e.message
  # Can then also raise it again to ensure still show the error
  raise
end