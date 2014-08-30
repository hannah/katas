def merge_sort(array)
  if array.length == 1
    return array
  else
    mid = (array.length)/2
    left = array.slice(0, mid)
    right = array.slice(mid, -1)

    merge(merge_sort(left), merge_sort(right))
  end
end

def merge(left, right)
  sorted = []
  until left.empty? or right.empty?
    if left[0] <= right[0]
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
end

list = [1, 3, 6, 7, 3, 6, 5, 7, 2, 9, 0]
merge_sort(list)
