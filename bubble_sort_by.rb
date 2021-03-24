def bubble_sort_by(arr)
  sorted = false
  until sorted
    sorted = true
    arr.each_with_index do |item, index|
      next unless arr[index + 1] && yield(item, arr[index + 1]).positive?

      arr[index] = arr[index + 1]
      arr[index + 1] = item
      sorted = false
    end
  end

  if sorted == true
    arr
  else
    bubble_sort_by(arr)
  end
end

print bubble_sort_by(%w[halloween hi hello hey]) { |left, right| left.length - right.length }