# proc
hello = Proc.new do | name |
	puts "hello, #{name}."
end

hi = proc do | name |
	puts "hi, #{name}."
end

hello.call("inomar")
hi.call("inomar")
