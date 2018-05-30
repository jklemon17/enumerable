module Enumerable
  def my_each
    for i in 0...self.length do
      yield(self[i])
    end
  end

  
end


[1,2,3].my_each do |x|
  puts x
end
