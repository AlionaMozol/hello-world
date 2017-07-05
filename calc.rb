def count (a, b, op)
	if op == '+'
		a + b
	elsif op == '-'
		a - b
	elsif op == '*'
		a * b
	elsif op == '/'
		a / b
		end
end

number = []
operation = []
ops = ["+", "-", "*", "/"]
str = gets.chomp
while str != "" do
	if str.size == 1 && ops.include?(str)
		operation << str
	elsif str =~ /^([0-9]+[.][0-9]+)|([0-9]+)$/
		number << str.to_f
	else
		puts "Wrong input!"
		return
		end
	str = gets.chomp
	end
n = number.size-1
operation.each do |op|
	number[n-1] = count(number[n-1], number[n], op)
	n -= 1
	end
puts number[0]
