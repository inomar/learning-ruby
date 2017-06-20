n = 8
m = 3

pol = Array.new
(1..n).each do | i |
  pol << i
end

(1..m).each do | i |
  p pol.each_slice(i).to_a
end
