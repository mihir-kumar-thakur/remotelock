require 'spec_helper'

RSpec.describe 'Sorter Functional Test' do
  describe 'Sort array by given element index' do
    let(:array) do
      [
        ["Rhiannon", "Los Angeles", "4/30/1974"],
        ["Rigoberto", "New York City", "1/5/1962"],
        ["Mckayla", "Atlanta", "5/29/1986"],
        ["Elliot", "New York City", "5/4/1947"]
      ]
    end

    it 'sorts the array according to element index' do
      sorted_array = Sorter.sort!(array, sort_by_index = 0)
      expect(sorted_array).to eq [
        ["Elliot", "New York City", "5/4/1947"],
        ["Mckayla", "Atlanta", "5/29/1986"],
        ["Rhiannon", "Los Angeles", "4/30/1974"],
        ["Rigoberto", "New York City", "1/5/1962"]
      ]


      sorted_array = Sorter.sort!(array, sort_by_index = 1)
      expect(sorted_array).to eq [
        ["Mckayla", "Atlanta", "5/29/1986"],
        ["Rhiannon", "Los Angeles", "4/30/1974"],
        ["Rigoberto", "New York City", "1/5/1962"],
        ["Elliot", "New York City", "5/4/1947"]
      ]
    end
  end
end
