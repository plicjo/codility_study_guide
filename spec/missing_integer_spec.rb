require 'spec_helper'
require_relative '../missing_integer'

RSpec.describe 'Missing Integer' do
  it 'return the small positive integer' do
    expect(missing_integer([1, 3, 6, 4, 1, 2])).to eq(5)
  end

  it 'all small integers' do
    expect(missing_integer([1, 2, 3])).to eq(4)
  end

  it 'all negative numbers' do
    expect(missing_integer([-1, -3])).to eq(1)
  end

  it 'smallest is 1' do
    expect(missing_integer([2, 3, 4])).to eq(1)
  end

  it '1' do
    expect(missing_integer([1])).to eq(2)
  end

  it '0' do
    expect(missing_integer([0])).to eq(1)
  end
end

