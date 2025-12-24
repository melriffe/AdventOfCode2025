# frozen_string_literal: true

##
# --- Day 2: Gift Shop ---
# https://adventofcode.com/2025/day/2
#
class Day02
  def initialize data
    self.data = data
    self.accumulator = []
  end

  def calculate
    data.chomp.split(',').each do |range_line|
      parts = range_line.split('-')
      lower = parts.first
      upper = parts.last
      lower.upto(upper).each do |id|
        accumulator << id.to_i if invalid?(id)
      end
    end
    accumulator.sum
  end

  private

  attr_accessor :data, :accumulator

  def invalid? id
    return false if id.length.odd?

    length = id.length
    midpoint = length / 2
    id[0, midpoint] == id[midpoint..]
  end
end
