require 'rspec'
require 'quicksort.rb'

describe Quicksort, "sorting" do
  it 'returns a sorted array when given an unsorted array' do
    quicksort([1, 3, 4, 2, 5]).should eq([1, 2, 3, 4, 5])
  end
end
