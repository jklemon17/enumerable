module Enumerable
  def my_each
    for i in 0...self.length do
      yield(self[i])
    end
  end

  def my_each_with_index
    for i in 0...self.length do
      yield(self[i], i)
    end
  end

  def my_select
    new_arr = []
    self.my_each do |value|
      if yield(value)
        new_arr.push(value)
      end
    end
    return new_arr
  end
end

# Testing below
puts "Testing my_each"
[1,2,3].my_each do |x|
  puts x
end

puts "Testing my_each_with_index"
[1,2,3].my_each_with_index do |value, i|
  puts "#{value} has index: #{i}."
end

puts "Testing my_select"
evenNumbers = [1,2,3,4,5,6,7,8].my_select do |value|
  value % 2 == 0
end

puts evenNumbers
