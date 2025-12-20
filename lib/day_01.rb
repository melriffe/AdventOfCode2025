# frozen_string_literal: true

require_relative 'components/click_strategy'
require_relative 'components/decoy_strategy'
require_relative 'components/dial'

##
# --- Day 1: Secret Entrance ---
# https://adventofcode.com/2025/day/1
#
class Day01
  COUNTERS = { 'decoy' => DecoyStrategy, 'click' => ClickStrategy }.freeze

  def initialize data
    self.data = data
  end

  def calculate counting_strategy: 'decoy'
    self.strategy = COUNTERS[counting_strategy].new data, Dial.new
    strategy.run
    strategy.zero_counts
  end

  private

  attr_accessor :data, :strategy
end
