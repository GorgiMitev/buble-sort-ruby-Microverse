def bubble_sort(arr)
  sorted = false
  unless sorted
    sorted = true
    arr.each_with_index do |item, index|
      next unless arr[index + 1] && item > arr[index + 1]

      arr[index] = arr[index + 1]
      arr[index + 1] = item
      sorted = false
    end
  end
  if sorted == true
    arr
  else
    bubble_sort(arr)
  end
end

# print bubble_sort([1, 3, 2, 7, 6])
