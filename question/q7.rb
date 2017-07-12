require 'date'

first_day = Date.new(1964, 10, 10)
last_day = Date.new(2020, 7, 24)

(first_day..last_day).each do |day|
	n  =  day.strftime("%Y%m%d").to_i.to_s(2)
	p day.strftime("%Y%m%d") if n == n.reverse
end
