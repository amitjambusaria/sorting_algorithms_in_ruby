class MergeSort
  def merge_sort(arr)
    if arr.size <= 1
      arr
    else
      mid = (arr.size/2).floor 
      left = merge_sort(arr[0...mid])
      right = merge_sort(arr[mid...arr.size])
      merge(left, right)
    end
  end

  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first < right.first
      [left.first] + merge(left[1...left.length], right)
    else
      [right.first] + merge(left, right[1...right.length])
    end
  end
end

if __FILE__ == $0

  arr = [3, 5, 6, -1 , 0, 10, 100]

  m = MergeSort.new
  p m.merge_sort(arr)

end
