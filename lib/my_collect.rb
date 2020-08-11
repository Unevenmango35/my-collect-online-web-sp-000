def my_collect(array)
 i = 0
 collection = []
  while i < array.length
    yield(array[i])
    i += 1
  end
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

array = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(array) do |lang|
  lang.upcase
end