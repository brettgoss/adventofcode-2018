file = File.read('./input.txt')
array_of_claims = file.split("\n")

regex = Regexp.new("#([0-9]+) @ ([0-9]{1,4}),([0-9]{1,4}): ([0-9]{1,4})x([0-9]{1,4})")
fabric = Array.new(1234){ Array.new(1234, 0)}
claim_overlapped = Hash.new(0)

array_of_claims.each do |claim|
  id = regex.match(claim)[1].to_i
  x  = regex.match(claim)[2].to_i
  y  = regex.match(claim)[3].to_i
  w  = regex.match(claim)[4].to_i
  h  = regex.match(claim)[5].to_i
  claim_overlapped[id] = false

  for i in 1..w do
    for j in 1..h do
      if fabric[x + i][y + j] === 0
        fabric[x + i][y + j] = id
      end

      if fabric[x + i][y + j] != id
        claim_overlapped[id] = true
        claim_overlapped[fabric[x + i][y + j]] = true
      else
      end
    end
  end

end

puts claim_overlapped.key false
