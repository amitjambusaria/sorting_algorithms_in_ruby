class BubbleSort
  def bubble_sort(arr)

    # if the array is of length 0 or 1, consider it is already sorted
    if arr.length <= 1
      return arr 
    end

    loop do
      sorted = true

      for index in (0...arr.size - 1)
        if arr[index] > arr[index + 1]
          arr[index], arr[index + 1] = arr[index + 1], arr[index]
          sorted = false
        end
      end

      break if sorted
    end

    arr
  end
end

if __FILE__ == $0

  arr = [3, 5, 6, -1 , 0, 10, 100]

  b = BubbleSort.new
  p b.bubble_sort(arr)

end
