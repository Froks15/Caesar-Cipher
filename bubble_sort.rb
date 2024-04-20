def bubble_sort(arr)
  loop do
    need_to_swap = false
    arr.each_with_index do |_num, i|
      next if i == arr.size - 1

      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        need_to_swap = true
      end
    end
    break unless need_to_swap
  end

  arr
end
