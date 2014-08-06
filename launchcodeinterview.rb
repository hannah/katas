#Problem 1
#Essentially fizzbuzz

n = STDIN.read.to_i

(1..n).each do |i|
    if i%56 == 0
      STDOUT.puts "LaunchCodeSTL"
    elsif i%28 == 0  #could also be written i%7==0 && i%4==0
      STDOUT.puts "LaunchCode"
    elsif i%7 == 0
      STDOUT.puts "Code"
    elsif i%4 == 0
      STDOUT.puts "Launch"
    else
      STDOUT.puts "#{i}"
    end
end

#Problem 2
#Get a character, convert it to binary, get the inverse of the binary characters, convert it back to an integer

def  getIntegerComplement( n)
    original_binary = n.to_s(2)

    new_binary = ''
    original_binary.to_s.each_char do |c|
         if c == "0"
             new_binary << "1"
         else
             new_binary << "0"
         end
    end
    new_binary.to_i(2)
end

