require 'rspec'
require_relative 'life'

#Any live cell with less than two live neighbors dies, as if caused by under-population.
#Any live cell with two or three live neighbors lives on to the next generation.
#Any live cell with more than three live neighbors dies, as if by overcrowding.
#Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.
describe Cell do

  it 'checks if a cell is alive' do
    living_cell = Cell.new
    expect(living_cell.state).to eq(true)
    living_cell.dies
    expect(living_cell.state).to eq(false)
  end


end

# describe World do
#  skip
# end
