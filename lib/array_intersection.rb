# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n) where n is size of largest array
# Space complexity: O(1)
def intersection(array1, array2)
  intersection = []
  if array1 == [] || array2 == [] || array1 == nil || array2 == nil
    return intersection
  end

  hash = Hash.new(0)
  array1.each do |num|
    hash[num] += 1
  end
  array2.each do |num|
    if hash.has_key?(num)
      intersection << num
    end
  end

  return intersection
end
