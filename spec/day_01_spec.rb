# frozen_string_literal: true

require './lib/day_01'

RSpec.describe 'Day 1: Secret Entrance' do
  let(:fixture) { File.join fixtures_path, 'day_01.data' }
  let(:fixture_data) { File.readlines fixture }

  context 'with decoy strategy' do
    let(:strategy) { 'decoy' }

    context 'with example' do
      let(:data) { %w[L68 L30 R48 L5 R60 L55 L1 L99 R14 L82] }

      it 'returns 3' do
        model = Day01.new data
        expect(model.calculate(counting_strategy: strategy)).to eq 3
      end
    end

    context 'with exercise' do
      it 'returns 1026' do
        model = Day01.new fixture_data
        expect(model.calculate(counting_strategy: strategy)).to eq 1026
      end
    end
  end

  context 'with click strategy' do
    let(:strategy) { 'click' }

    context 'with example' do
      let(:data) { %w[L68 L30 R48 L5 R60 L55 L1 L99 R14 L82] }

      it 'returns 6' do
        model = Day01.new data
        expect(model.calculate(counting_strategy: strategy)).to eq 6
      end
    end

    context 'with exercise' do
      it 'returns 1026' do
        model = Day01.new fixture_data
        expect(model.calculate(counting_strategy: strategy)).to eq 5923
      end
    end
  end
end
