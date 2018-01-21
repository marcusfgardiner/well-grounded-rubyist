class MyNewException < Exception
end

begin
    puts "About to raise an exception"
    # Can use raise within code to raise an exception for a specific reason
    # E.g. if n goes higher than 100, raise an error (of my creation)
    raise MyNewException

     #Save the exception into a variable, 'e'
rescue MyNewException => e
    puts "Just raised a new exception #{e}"
end
