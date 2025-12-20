# frozen_string_literal: true

require './lib/day_01'

RSpec.describe 'Day 1: Secret Entrance' do
  let(:fixture) { File.join fixtures_path, 'day_01.data' }
  let(:fixture_data) { File.readlines fixture }

  context 'with examples' do
    describe '#zero_counts' do
      let(:data) { %w[L68 L30 R48 L5 R60 L55 L1 L99 R14 L82] }

      it 'returns 3' do
        model = Day01.call data: data
        expect(model.zero_counts).to eq 3
      end
    end
  end

  context 'with exercises' do
    describe '#zero_counts' do
      it 'returns 1026' do
        model = Day01.call data: fixture_data
        expect(model.zero_counts).to eq 1026
      end
    end
  end
end
