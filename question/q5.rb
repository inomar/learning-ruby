coins = [500, 100, 50, 10]

count = 0
(2..15).each do | i |
	coins.repeated_combination(i).each do | coin |
		count += 1 if coin.inject(:+) == 1000
	end
end

puts count
