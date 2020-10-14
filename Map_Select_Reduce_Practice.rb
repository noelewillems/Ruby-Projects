# Created by Noel Willems
# Sources:
# https://apidock.com/ruby/Enumerable/reduce
# https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/#Understanding_Ruby_Blocks

my_in = [5,10,15,20,25,30]
puts "starting point"
my_in.each { |num| }.join(" ")
puts my_in.to_s

puts "multiply elements by 2"
result = my_in.map{ |num| num * 2 }
puts result.to_s

puts "square elements"
result = my_in.map{ |num| num * num }
puts result.to_s

my_in = ["one", "fish", "two", "fish","red","fish","blue","fish"]
puts "starting point"
puts my_in.to_s

puts "capitalize"
result = my_in.map{ |word| word.capitalize }
puts result.to_s

my_in = [5,10,15,20,25,30]
puts "starting point"
puts my_in.to_s

puts "select even"
result = my_in.select { |num| num.even? }
puts result.to_s

my_in = ["one", "fish", "two", "fish","red","fish","blue","fish"]
puts "starting point"
puts my_in.to_s

puts "not fish"
result = my_in.select { |num| num != "fish"}
puts result.to_s

my_in = [5,10,15,20,25,30]
puts "starting point"
puts my_in.to_s

puts "sum the squares"
result = my_in.reduce(:+)
puts result.to_s