file = File.read('./input.txt')
array_of_ids = file.gsub("\n",",").split(",")
array_of_ids.sort!

most_similar_id = ""
prev_id = ""
array_of_ids.each do |id|
  common_letters = ""
  for i in 0..id.length - 1
    if prev_id[i] === id[i]
      common_letters << id[i]
    end
  end

  if common_letters.length > 0
    if most_similar_id.length < common_letters.length
      most_similar_id = common_letters
    end
  end
  
  prev_id = id
end

puts most_similar_id