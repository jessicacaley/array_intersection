# Returns a new array to that contains elements in the intersection of the two input arrays

# Time complexity: O(n+m), where n is the length of array1 and m is the length of array2
# Space complexity: O(n), where n is the number of elements in the smallest array
def intersection(array1, array2)
  if !array1 || !array2 || array1.length == 0 || array2.length == 0
    return []
  end

  if array1.length > array2.length
    big_array = array1
    small_array = array2
  else
    big_array = array2
    small_array = array1
  end

  hash = {}

  small_array.each do |number|
    hash[number] = 1 # clarification: why is this 1? just a placeholder?
  end

  intersection = []
  big_array.each do |number|
    if hash.include? number
      intersection << number
    end
  end

  return intersection
end
