require 'pry'
# Enter your code here. Read input from STDIN. Print output to STDOUT
inputs = gets.chomp.to_i

cycle1 = gets.chomp.to_i
cycle2 = gets.chomp.to_i

@height = 1

def height_analysis(cycle)
    binding.pry
    if cycle == 0
        puts @height
    end

    unless cycle == 1
        if cycle % 2 == 1
            @height = @height + 1
            cycle = cycle - 1
            height_analysis(cycle)
        else
            @height = @height*2
            cycle = cycle - 1
            height_analysis(cycle)
        end
    else
       puts @height
    end
end

height_analysis(cycle1)
height_analysis(cycle2)
