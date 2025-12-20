# frozen_string_literal: true

##
# Counts each time the dial ends on Zero
#
class DecoyStrategy
  attr_reader :zero_counts

  def initialize data, dial
    self.data = data
    self.dial = dial
    self.zero_counts = 0
  end

  def run
    data.each do |line|
      if line.start_with? 'L'
        left line[/\d+/].to_i
        self.zero_counts += 1 if dial.zero?
      elsif line.start_with? 'R'
        right line[/\d+/].to_i
        self.zero_counts += 1 if dial.zero?
      else
        raise "Uknown Line: #{line}"
      end
    end
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
