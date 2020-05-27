require 'spec_helper'
require_relative '../tape_equilibrium'

RSpec.describe 'Tape Equilibrium' do
  it 'returns the minimum difference' do
    expect(tape_equilibrium([3, 1, 2, 4, 3])).to eq(1)
  end

  it 'smallest possible' do
    expect(tape_equilibrium([0, 0])).to eq(0)
  end

  it 'negative numbers' do
    expect(tape_equilibrium([-3, -1, -2, -4, -3])).to eq(1)
  end
end

