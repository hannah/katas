# checks the validity of any string as a palidrome while not allowing for symbols or numbers
require 'pry'

def palindrome(string)

  palindrome = string.gsub(/\W/,"")


  if palindrome.downcase.reverse! == palindrome.downcase
    puts "This is a palindrome"
  else
    puts "Not a palidrome"
  end
end


palindrome("Kayak")
