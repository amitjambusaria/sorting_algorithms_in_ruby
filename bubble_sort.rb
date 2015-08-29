class BubbleSort
  def bubble_sort(arr)
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

  x = BubbleSort.new
  p x.bubble_sort(arr)

end