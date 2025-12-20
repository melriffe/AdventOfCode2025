# frozen_string_literal: true

##
# Counts the number of times Zero is passed, or landed on.
#
class ClickStrategy
  attr_reader :zero_counts

  def initialize data, dial
    self.data = data
    self.dial = dial
    self.zero_counts = 0
  end

  def run
    dial.add_observer(self)
    data.each do |line|
      if line.start_with? 'L'
        left line[/\d+/].to_i
      elsif line.start_with? 'R'
        right line[/\d+/].to_i
      else
        raise "Uknown Line: #{line}"
      end
    end
  end

  def update
    self.zero_counts += 1
  end

  private

  attr_accessor :data, :dial
  attr_writer :zero_counts

  def left count
    count.times do |_i|
      dial.decrement
      dial.at_tail if dial.past_head?
    end
  end

  def right count
    count.times do |_i|
      dial.increment
      dial.at_head if dial.past_tail?
    end
  end
end
