a = [
  {
    id: 1,
    name: 'foo'
  },
  { 
    id: 3,
    name: 'bar'
  },
  { 
    id: 2,
    name: 'baz'
  }
]

# idを基準にソートしたい
# 結論
p a
p a.sort_by{ | val |  val[:id] }

b = [1, 2, 3]

p b
p b.map{ |c| c * 5 }
