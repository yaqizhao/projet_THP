def some_method(number)
  number = 7 # this is implicitly returned by the method
end

a = 5
puts some_method(a)
puts a

a = [1, 2, 3, nil]

# Example of a method definition that modifies its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
puts "After mutate method: #{a}"


def add_three(n)
  puts n + 3
end

add_three(5).times { puts "will this work?" }
#8.times{ puts "will this work?" }
