def quicksort(array)
  if array.length <= 1
    return array
  else
    pivot = array.sample
    array.delete_at(array.index(pivot))
    less = []
    greater = []

    array.each do |x|
      if x <= pivot
        less << x
      else
        greater << x
      end
    end

    sorted_array = []
    sorted_array << quicksort(less)
    sorted_array << pivot
    sorted_array << quicksort(greater)

    sorted_array.flatten!
  end
end

puts quicksort([1, 3, 5, 6, 7, 3, 5, 4, 2 , 5, 6, 1, 0, 4, 9])





