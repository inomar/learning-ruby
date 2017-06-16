# 
emu = ['+', '-', '*', '/', '']
(1000..9999).each do | n |
	emu.each do | i |
		emu.each do | j |
			emu.each do | k |
				calc =  "#{n.to_s[3]}#{i}#{n.to_s[2]}#{j}#{n.to_s[1]}#{k}#{n.to_s[0]}"
				next if calc =~ /0[1-9]/
    			next if calc =~ /\/0/
    			next if calc !~ /[\+\-\*\/]/
				nums = n.to_s.split('')
				puts n if eval(calc).to_s == (nums.join('')).reverse
			end
		end
	end
end
