#
n = 100
cards = Array.new(n, false)

(2..n).each do | i |
  j = i - 1
  while(j < cards.size) do
    cards[j] = !cards[j]
    j += i
  end
end


n.times do | i |
    puts i + 1 if !cards[i]
end

# 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
