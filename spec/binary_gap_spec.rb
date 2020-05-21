require 'spec_helper'
require_relative '../binary_gap'

RSpec.describe 'Binary Gap' do
  it '9' do
    expect(binary_gap(9)).to eq(2)
  end

  it '529' do
    expect(binary_gap(529)).to eq(4)
  end

  it '20' do
    expect(binary_gap(20)).to eq(1)
  end

  it '1041' do
    expect(binary_gap(1041)).to eq(5)
  end

  it '32' do
    expect(binary_gap(32)).to eq(0)
  end

  it '66561' do
    expect(binary_gap(66561)).to eq(9)
  end
end
