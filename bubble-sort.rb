def bubble_sort(arr)
  len = arr.length

  while true
    swapped = false

    for idx in (0..(len-2))
      if arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        # mark the outer itteration swapped so break doesn't execute
        swapped = true
      end
    end
    # if no swapping happened in this itteration break
    break if (not swapped)
  end

  return arr
end

def bubble_sort_by(arr)
  len = arr.length

  while true
    swapped = false

    for idx in (0..(len-2))
      result = yield(arr[idx], arr[idx + 1])
      
      if result > 0
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        # mark the outer itteration swapped so break doesn't execute
        swapped = true
      end
    end
    # if no swapping happened in this itteration break
    break if (not swapped)
  end

  return arr
end