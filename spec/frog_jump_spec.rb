require 'spec_helper'
require_relative '../frog_jump'

RSpec.describe 'Frog Jump' do
  it '3 jumps' do
    expect(frog_jump(10, 85, 30)).to eq(3)
  end

  it 'no jumps' do
    expect(frog_jump(1, 1, 9000)).to eq(0)
  end

  it '1 jump' do
    expect(frog_jump(10, 40, 30)).to eq(1)
  end

  it 'massive jump' do
    expect(frog_jump(1, 2, 3000)).to eq(1)
  end
end

