# 10進数、8進数、2進数それぞれで回文になる数を探す 
i = 11
loop do
	if i.to_s.reverse == i.to_s && 
	   i.to_s(2).reverse == i.to_s(2) && 
	   i.to_s(8).reverse == i.to_s(8)
		puts "10進数: #{i}"
		puts "2進数: #{i.to_s(2)}"
		puts "8進数: #{i.to_s(8)}"
		break
	end
	i += 2
end
