class MyNewException < Exception
end

begin
    puts "About to raise an exception"
    raise MyNewException
     
rescue MyNewException => e
    puts "Just raised a new exception #{e}"
end