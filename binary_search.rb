class BinarySearch
  def binary_search(arr, key, low=0, high=arr.size-1)

    return -1 if low > high
    return -1 if (key < arr[low] || key > arr[high])

    mid = ((low + high)/2).floor
    return mid if arr[mid] == key

    if arr[mid] > key
      high = mid - 1
    else
      low = mid + 1
    end 

    binary_search(arr, key, low, high)
  end
end

if __FILE__ == $0

  arr = [3, 5, 6, 10 , 14, 19, 100]

  b = BinarySearch.new
  p b.binary_search(arr, 19)  # => 5

end