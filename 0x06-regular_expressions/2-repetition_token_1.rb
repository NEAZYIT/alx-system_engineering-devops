#!/usr/bin/env ruby

# Check if there's an argument passed to the script
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <text>"
  exit(1)
end

# Extract the argument from the command line
text = ARGV[0]

# Use a regular expression to find all occurrences of 'hbtn' or 'hbtn' and join them
matches = text.scan(/hb?tn/).join

# Print the result
puts matches
