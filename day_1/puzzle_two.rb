
file = File.read('./input.txt')
array_of_numbers = file.gsub("\n",",").split(",")

freq_hash = Hash.new(0)
current_freq = 0

until defined? repeat_number do
  array_of_numbers.each do |num|
    current_freq += num.to_i
    freq_hash[current_freq] += 1

    if freq_hash[current_freq] > 1
      puts "First repeat value: " + current_freq.to_s
      repeat_number = current_freq
      exit
    end
  end
end