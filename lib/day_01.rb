# frozen_string_literal: true

require 'smart_init'

##
# --- Day 1: Secret Entrance ---
# https://adventofcode.com/2025/day/1
#
class Day01 < SmartInit::Base
  attr_reader :zero_counts

  initialize_with :data, dial_position: 50
  is_callable

  def call
    self.zero_counts = 0
    self.index = dial_position

    data.each do |line|
      if line.start_with? 'L'
        left line[/\d+/].to_i
        self.zero_counts += 1 if index.zero?
      elsif line.start_with? 'R'
        right line[/\d+/].to_i
        self.zero_counts += 1 if index.zero?
      else
        raise "Unknown Line: #{line}"
      end
    end
    self
  end

  private

  attr_accessor :index
  attr_writer :zero_counts

  def head
    @head ||= 0
  end

  def tail
    @tail ||= 99
  end

  def dial
    @dial ||= (tail..head).to_a
  end

  def left count
    count.times do |_i|
      self.index -= 1
      self.index = tail if index < head
    end
  end

  def right count
    count.times do |_i|
      self.index += 1
      self.index = head if index > tail
    end
  end
end
