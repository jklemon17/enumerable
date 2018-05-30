module Enumerable
  def my_each
    for i in 0...self.length do
      puts self[i]
    end
  end
end
