require 'spec_helper'
require_relative '../frog_river_one'

RSpec.describe 'Frog River One' do
  it 'position 6' do
    expect(frog_river_one(5, [1, 3, 1, 4, 2, 3, 5, 4])).to eq(6)
  end

  it 'the frog never crosses' do
    expect(frog_river_one(3, [1, 1, 2, 2])).to eq(-1)
  end

  it 'when X and N are 1' do
    expect(frog_river_one(1, [1])).to eq(0)
  end

  it 'when X is 1 and the frog crosses at second zero' do
    expect(frog_river_one(1, [2, 2, 1])).to eq(2)
  end

  it 'when X is 1 and you have multiple leaves' do
    expect(frog_river_one(2, [1, 2, 2])).to eq(1)
  end

  it 'when X is 1 and the frog cant cross' do
    expect(frog_river_one(1, [2])).to eq(-1)
  end
end
