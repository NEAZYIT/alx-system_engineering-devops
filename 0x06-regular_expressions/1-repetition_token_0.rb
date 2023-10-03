#!/usr/bin/env ruby

# Check if there's an argument passed to the script
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <text>"
  exit(1)
end

# Extract the argument from the command line
text = ARGV[0]

# Define the regular expression to match specific patterns
regex = /hbt{2,5}n/

# Check if the text matches the regular expression
if text =~ regex
  puts text
else
  puts "No match found"
end
