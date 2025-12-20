# frozen_string_literal: true

require 'observer'

##
# The dial on the safe.
#
class Dial
  include Observable

  def initialize
    self.head = 0
    self.index = 50
    self.tail = 99
  end

  def decrement
    self.index -= 1
    announce_zero!
  end

  def increment
    self.index += 1
    announce_zero!
  end

  def at_head
    self.index = head
    announce_zero!
  end

  def at_tail
    self.index = tail
  end

  def past_head?
    self.index < head
  end

  def past_tail?
    self.index > tail
  end

  def zero?
    index.zero?
  end

  private

  attr_accessor :head, :index, :tail

  def announce_zero!
    return unless zero?

    changed
    notify_observers
  end
end
