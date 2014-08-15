array = [1, 5, 3, 5, 2]

highest_number = nil
highest_index = nil
def highest_number(array)
    array.each_with_index do |num, index|
     if num > highest_number
      highest_index = index
    end
  print highest_index
end

highest_number(array)
