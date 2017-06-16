#
def print_enable_combinarion(from, to)
  (from..to).each do | num |
    nums = num.to_s.split('')
    if enable_combinarion(nums)
  		result = enable_combinarion(nums)
		puts "#{num} => #{result} =  #{(nums.join('')).reverse}"
	end
  end
end

def enable_combinarion(nums)
  combi(nums).each do | f |
    next if f =~ /0[1-9]/
    next if f =~ /\/0/
    next if f !~ /[\+\-\*\/]/
    return f if eval(f).to_s == (nums.join('')).reverse
  end
  return false
end

def combi(a)
  res_array = [a[0]]
  (1..3).each do | n |
    res_array = add_sign_and_num(res_array, a[1])
  end
  res_array
end

def add_sign_and_num(a, num)
  a.product(["+", "-", "*", "-", ""]).map{ | m | "#{m.join('')}#{num}"}
end

print_enable_combinarion(1000, 9999)

# 1971 => 199*9 =  1791
# 4662 => 4*666 =  2664
# 5994 => 5*999 =  4995
# 8613 => 8*6*66 =  3168
