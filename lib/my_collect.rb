
def my_collect(array)

collection = []
counter = 0
while counter < array.length do

  collection << yield array[counter]
  counter += 1

end
return collection

end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end


collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end
