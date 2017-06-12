# <=> num
p 10 <=> 20 # -1
p 10 <=> 10 # 0
p 20 <=> 10 # 1
p 10 <=> "10" # nil

# <=> string
word = "happy"
word2 = "happiness"
p word <=> word2 # 1
