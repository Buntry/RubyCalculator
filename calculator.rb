@x = 0
@y = 0

def add(a, b)
	return a+b
end
def subtract(a, b)
	return a-b
end
def multiply(a, b)
	return a*b
end
def divide(a, b)
	return (a * 1.0/b)
end
def modulo(a, b) 
	return a%b
end
def power(a, b)
	return a**b
end
def reverse
	temp = @y
	@x = @y
	@y = temp
end

continue = true
restart = true
statement = " "

commands = ["help", "config", "reverse", "clear", "quit", "add", "subtract", "multiply", "divide", "modulo", "power"]

while restart

		puts "What is your first number?"
		x = gets.chomp!.to_i

		puts "What is your second number?"
		y = gets.chomp!.to_i


		puts "\n" * 25

		puts "Enter what you want your numbers to do! (Enter \"help\" for commands)"

		restart = false
		continue = true
		while continue

			statement = gets.chomp!

			if(statement == "help")
				puts commands
				puts "\n"
			elsif(statement == "config")
				continue = false
				restart = true
				puts "\n"
			elsif(statement == "reverse")
				reverse
				puts "\n"
			elsif(statement == "clear")
				puts "\n" * 25
			elsif(statement == "quit")
				continue = false
				restart = false
				puts "\n"
			elsif(statement == "add")
				puts add(x,y)
				puts "\n"
			elsif(statement == "subtract")
				puts subtract(x,y)
				puts "\n"
			elsif(statement == "multiply")
				puts multiply(x,y)
				puts "\n"
			elsif(statement == "divide")
				puts divide(x,y)
				puts "\n"
			elsif(statement == "modulo")
				puts modulo(x,y)
				puts "\n"
			elsif(statement == "power")
				puts power(x,y)
				puts "\n"
			else
				puts "That isn't a registered command!"
				puts "\n"
			end
				
		end
end










