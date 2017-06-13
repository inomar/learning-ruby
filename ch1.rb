# <=> num
p 10 <=> 20 # -1
p 10 <=> 10 # 0
p 20 <=> 10 # 1
p 10 <=> "10" # nil

# <=> string
word = "happy"
word2 = "happiness"
p word <=> word2 # 1

# ||=
# 左辺が未定義orfalseなら右辺を代入
a = nil
a ||= 5
p a
a ||= 1
p a
