# Your Code Here

def map(source)
  output = []
  index = 0
  
  while index < source.length do
    output.push(yield(source[index]))
    index += 1
  end
  return output
end

def reduce(source, output = 0)
  index = 0

  while index < source.length do
    
    output = yield(source[index], output)
    
    index += 1
  end
  # I feel really badly about the following line of Code
  # I intend to revisit this when my knowledge is better and correct it
  if output == nil
    output = false
  end
  output
end