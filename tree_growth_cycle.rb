# Enter your code here. Read input from STDIN. Print output to STDOUT
inputs = STDIN.gets.chomp

cycle1 = STDIN.gets.chomp.to_i
cycle2 = STDIN.gets.chomp.to_i

@height = 1

def height_analysis(cycle)
    if cycle == 0
        STDOUT.puts @height
    end

    unless cycle == 1
        if cycle % 2 == 1
            @height = @height + 1
            cycle = cycle - 1
        else
            @height = @height*2
            cycle = cycle - 1
        end
    else
        STDOUT.puts @height
    end
end

height_analysis(cycle1)
height_analysis(cycle2)
