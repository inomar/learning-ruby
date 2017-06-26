cnt = 0

(0..2).each do | coin500 |
	(0..10).each do | coin100 |
		(0..15).each do | coin50 |
			(0..15).each do | coin10 |
				if coin500 + coin100 + coin50 + coin10 <= 15
					if coin500 * 500 + coin100 * 100 + coin50 * 50 + coin10 * 10 == 1000
						cnt += 1
					end
				end
			end
		end
	end
end

puts cnt
