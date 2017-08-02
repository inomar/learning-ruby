# lambda
# procよりメソッドに近い動きをする

# 引数チェック
proc = lambda do |a, b, c|
	p [a, b, c]
end

# proc.call(2,3) #=> wrong number of arguments (given 2, expected 3) (ArgumentError)


# returnの抜ける範囲
def foo
	f = Proc.new { return :foo }
	f.call
	return
end

def foo2
	f = proc { return :foo2 }
	f.call
	return
end

def bar
	f = lambda { return :bar }
	f.call
	return
end

def h
	yield
end

def hoge
	h{return :hoge }
	nil
end


puts "foo: #{foo()}"
puts "foo2: #{foo2()}"
puts "bar: #{bar()}"
puts "hoge: #{hoge()}"
