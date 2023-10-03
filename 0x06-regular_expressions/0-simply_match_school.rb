#!/usr/bin/env ruby

# Check if there's an argument passed to the script
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <text>"
  exit(1)
end

# Extract the argument from the command line
text = ARGV[0]

# Define the regular expression to match "School"
regex = /School/

# Find all matches in the text
matches = text.scan(regex)

# Check if any matches were found
if !matches.empty?
  puts matches.join('$') + '$'
else
  puts "No match found"
end
