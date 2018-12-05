
file = File.read('./input.txt')
array_of_numbers = file.gsub("\n",",").split(",")

frequency = 0
array_of_numbers.each do |num|
  frequency += num.to_i
end

puts frequency