# checks the validity of any string as a palidrome while not allowing for symbols or numbers
require 'pry'

def palindrome(string)
   def reversal(string)
     half_length = string.length/2
     half_length.times {|i| string[i], string[-i-1] = string[-i-1], string[i]}
   end

  palindrome = string.gsub(/\W/,"")
  binding.pry

  if reversal(palindrome).downcase == palindrome.downcase
    return true
  else
    return false
  end
end

palindrome("Abba Zabba, you're my only friend")
