file = File.read('./input.txt')
array_of_ids = file.gsub("\n",",").split(",")

unique_count = Hash.new(0)
# Loop through each ID
array_of_ids.each do |id|
  freq_hash = Hash.new(0)
  # Count the frequency of each character in a given ID
  id.split('').each do |char|
    freq_hash[char] += 1
  end

  # Remove frequencies of 1
  freq_hash.delete_if { |key, value| value < 2 || value > 3}
  # Remove duplicate values
  unique_chars = freq_hash.to_a.uniq {|_,v| v}.to_h
  # Count unique chars
  unique_chars.values.each do |num|
      unique_count[num] += 1
  end
end

puts unique_count
checksum = unique_count.values.inject(:*)
puts checksum

