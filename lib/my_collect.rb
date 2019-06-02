require "pry"

list = ["Tim Jones", "Bob Costas", "Don Knotts"]

def my_collect(array)
  i = 0
  empty_array = []
  while i < array.length
    empty_array << yield(array[i])
    yield(array[i])
    i += 1
  end
  empty_array
end

my_collect(list) {|i| i.split(" ").first}

binding.pry
