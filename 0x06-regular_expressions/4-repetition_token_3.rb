#!/usr/bin/env ruby

# Function to match and join all occurrences of 'hbttn,' 'hbtn,' 'hbttnn,' etc.
def match_and_join(text)
  # Define a regular expression pattern to match 'hbttn,' 'hbtn,' 'hbttnn,' etc.
  pattern = /hbt*n/
  
  # Find all matches and join them
  matches = text.scan(pattern).join

  matches
end

# Check if there's an argument passed to the script
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <text>"
  exit(1)
end

# Extract the argument from the command line
input_text = ARGV[0]

# Call the function to match and join the occurrences
result = match_and_join(input_text)

# Print the result
puts result
