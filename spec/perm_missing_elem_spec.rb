require 'spec_helper'
require_relative '../perm_missing_elem'

RSpec.describe 'Find the missing element in a given permutation.' do
  it 'find the missing 4' do
    expect(missing_element([2, 3, 1, 5])).to eq(4)
  end

  it 'find the missing 2' do
    expect(missing_element([1, 3])).to eq(2)
  end

  it 'find the missing 2' do
    expect(missing_element([1])).to eq(2)
  end

  it 'the last element is missing' do
    expect(missing_element([1, 2, 3, 4])).to eq(5)
  end

  it 'one element' do
    expect(missing_element([1])).to eq(2)
  end

  it 'the first element is missing' do
    expect(missing_element([2, 3, 4])).to eq(1)
  end

  it 'empty array' do
    expect(missing_element([])).to eq(1)
  end
end

