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

    let(:sort_by_index) { 0 }

    it 'sorts the array according to element index' do
      sorted_array = Sorter.sort!(array, sort_by_index)

      expect(sorted_array).to eq [
        ["Elliot", "New York City", "5/4/1947"],
        ["Mckayla", "Atlanta", "5/29/1986"],
        ["Rhiannon", "Los Angeles", "4/30/1974"],
        ["Rigoberto", "New York City", "1/5/1962"]
      ]
    end
  end
end
