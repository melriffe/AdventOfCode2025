# frozen_string_literal: true

require './lib/day_02'

RSpec.describe 'Day 2: Gitf Shop' do
  let(:fixture) { File.join fixtures_path, 'day_02.data' }
  let(:fixture_data) { File.read fixture }

  context 'with example data' do
    let(:data) do
      '11-22,95-115,998-1012,1188511880-1188511890,222220-222224,1698522-1698528,446443-446449,38593856-38593862,565653-565659,824824821-824824827,2121212118-2121212124'
    end

    it 'returns sum of invalid ids' do
      model = Day02.new data
      expect(model.calculate).to eq 1_227_775_554
    end
  end

  context 'with exercise data' do
    it 'returns sum of invalid ids' do
      model = Day02.new fixture_data
      expect(model.calculate).to eq 5_398_419_778
    end
  end
end
