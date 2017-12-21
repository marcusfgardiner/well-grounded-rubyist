# finding whether a substring is in a file
def line_from_file(filename, substring)
  fh = File.open(filename)
  begin
    line = fh.gets
    raise ArgumentError unless line.include?(substring)
  rescue ArgumentError
    puts "Invalid line!"
    raise
# Ensures the file is closed, no matter what, even if error is raised, error is rescued etc
  ensure
    fh.close
  end
  return line
end