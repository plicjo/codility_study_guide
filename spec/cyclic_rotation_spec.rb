require 'spec_helper'
require_relative '../cyclic_rotation'

RSpec.describe 'Cyclic Rotation' do
  it '3 rotations' do
    expect(cyclic_rotation([3, 8, 9, 7, 6], 3)).to eq([9, 7, 6, 3, 8])
  end

  it 'all zeroes' do
    expect(cyclic_rotation([0, 0, 0], 1)).to eq([0, 0, 0])
  end

  it '4 rotations' do
    expect(cyclic_rotation([1, 2, 3, 4], 4)).to eq([1, 2, 3, 4])
  end

  it 'no rotations' do
    expect(cyclic_rotation([1, 2, 3, 4], 0)).to eq([1, 2, 3, 4])
  end

  it 'one element' do
    expect(cyclic_rotation([4], 10)).to eq([4])
  end

  it 'empty array' do
    expect(cyclic_rotation([], 10)).to eq([])
  end
end

