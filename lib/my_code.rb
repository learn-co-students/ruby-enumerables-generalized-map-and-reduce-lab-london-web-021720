def map (array)
new_array = []
i = 0
while i < array.length do

new_array << yield(array[i])
i +=1
end

  return new_array


end


def reduce(array, extra = nil )
if extra
   num1 = extra
   i =0
 else
   num1 = array[0]
   i=1
 end
while i < array.length
  num1 = yield(num1, array[i])
i+=1
end
return num1
end
