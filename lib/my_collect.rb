names = ["Tim Jones", "Tom Smith", "Jim Campagno"]

collection = ['ruby', 'javascript', 'python', 'objective-c']

def my_collect(array)
  if block_given?
    i = 0
    while i < array.size
      yield(array[i])
      i += 1
    end
    array
  else
    "Block not provided"
  end
end

my_collect(names) do |name|
  name.split(" ").first
end

my_collect(collection) do |lang|
  lang.upcase
end