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
    sorted_array << self.quicksort(less)
    sorted_array << pivot
    sorted_array << self.quicksort(greater)

    return sorted_array.flatten!
  end
end


quicksort([1, 3, 2, 5, 4])
