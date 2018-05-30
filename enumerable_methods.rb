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
end


[1,2,3].my_each do |x|
  puts x
end

[1,2,3].my_each_with_index do |value, i|
  puts "#{value} has index: #{i}."
end
