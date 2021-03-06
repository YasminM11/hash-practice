

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: o(n)
# Space Complexity: o(n)

def grouped_anagrams(strings)
  # raise NotImplementedError, "Method hasn't been implemented yet!"
  hash = {}
  strings.each do |string|
    sorted_string = string.split("").sort.join
    if hash[sorted_string]
      hash[sorted_string] << string
    else 
      hash[sorted_string] = [string]
    end
  end
  return hash.values
end


# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: o(n)
# Space Complexity: o(n)
def top_k_frequent_elements(list, k)
  # raise NotImplementedError, "Method hasn't been implemented yet!"
  hash = {}
  output = []
  return list if list.empty?

  list.each do |element|
    if hash[element]
      hash[element] += 1
    else
      hash[element] = 1
    end
  end
  
  k.times do |element|
    output << hash.sort[element][0]
  end
  return output
end

# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same 
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end