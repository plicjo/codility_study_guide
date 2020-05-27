require 'spec_helper'
require_relative '../perm_check'

RSpec.describe 'Permutations Check' do
  it 'is a permutation' do
    expect(permutations([4, 1, 3, 2])).to eq(1)
  end

  it 'not a permutation' do
    expect(permutations([4, 1, 3])).to eq(0)
  end

  it 'has duplicates, not a permutation' do
    expect(permutations([4, 1, 3, 2, 3])).to eq(0)
  end

  it 'single element' do
    expect(permutations([5])).to eq(0)
  end

  it 'single element of 1' do
    expect(permutations([1])).to eq(1)
  end

  it '2 elements' do
    expect(permutations([1, 2])).to eq(1)
  end

  it '1 is missing' do
    expect(permutations([2, 3, 4])).to eq(0)
  end
end

