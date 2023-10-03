#!/usr/bin/env ruby

# Function to extract and format information from the input string
def extract_and_format_info(text)
  # Define a regular expression pattern to capture specific information
  pattern = /\[from:(\w+|\+?\d+)\] \[to:(\w+|\+?\d+)\] \[flags:(\-?\d:\-?\d:\-?\d:\-?\d:\-?\d)\]/
  
  # Extract information using regex and format it
  match_data = text.match(pattern)

  if match_data
    from = match_data[1]
    to = match_data[2]
    flags = match_data[3]
    
    "#{from},#{to},#{flags}"
  else
    "Invalid input format"
  end
end

# Check if there's an argument passed to the script
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <text>"
  exit(1)
end

# Extract the argument from the command line
input_text = ARGV[0]

# Call the function to extract and format the information
result = extract_and_format_info(input_text)

# Print the result
puts result
