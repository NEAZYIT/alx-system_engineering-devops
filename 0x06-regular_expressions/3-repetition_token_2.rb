#!/usr/bin/env ruby

# Check if there's an argument passed to the script
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <text>"
  exit(1)
end

# Extract the argument from the command line
text = ARGV[0]

# Use a regular expression to find all occurrences of 'hbttn,' 'hbtn,' 'hbttnn,' etc., and join them
matches = text.scan(/hbt+n/).join

# Print the result
puts matches
