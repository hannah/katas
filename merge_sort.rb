def merge_sort(list)
  if list.length <= 1
    return list
  else
    mid = ((list.length)/2).round
    left = list.slice(0...mid-1)
    right = list.slice(mid...list.last)

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



kittens = [1,3,6,7,3,6,5,7,2,9,0]
list = [2, 1]
puts merge_sort(list)
