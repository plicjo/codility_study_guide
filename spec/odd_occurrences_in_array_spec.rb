require 'spec_helper'
require_relative '../odd_occurrences_in_array'

RSpec.describe 'Odd Occurrences in Array' do
  it 'returns the unpaired element' do
    expect(odd_occurrences([9, 3, 9, 3, 9, 7, 9])).to eq(7)
  end

  it 'one element' do
    expect(odd_occurrences([9])).to eq(9)
  end

  it 'unpaired element is at the end' do
    expect(odd_occurrences([1, 1, 2, 2, 3])).to eq(3)
  end

  it 'unpaired element is duplicated' do
    expect(odd_occurrences([1, 1, 2, 2, 3, 3, 3])).to eq(3)
  end
end

