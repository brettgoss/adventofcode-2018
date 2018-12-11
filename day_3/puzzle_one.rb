file = File.read('./input.txt')
array_of_claims = file.split("\n")

regex = Regexp.new("#([0-9]+) @ ([0-9]{1,4}),([0-9]{1,4}): ([0-9]{1,4})x([0-9]{1,4})")
fabric = Array.new(1234){ Array.new(1234, 0)}
overlap_count = 0

array_of_claims.each do |claim|
  x = regex.match(claim)[2].to_i
  y = regex.match(claim)[3].to_i
  w = regex.match(claim)[4].to_i
  h = regex.match(claim)[5].to_i

  for i in 1..w do
    for j in 1..h do
      fabric[x + i][y + j] += 1

      if fabric[x + i][y + j] === 2
        overlap_count += 1
      end
    end
  end
end

puts "Overlap count: " + overlap_count.to_s