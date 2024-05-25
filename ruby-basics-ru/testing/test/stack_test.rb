# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def setup
    @stack = Stack.new
    @stack.push! 'ruby'
    @stack.push! 'php'
    @stack.push! 'java'
  end
  def teardown; end

  def test_to_a
    assert {@stack.to_a.class == Array}
  end

  def test_pop
    old_size = @stack.size
    @stack.pop!
    assert {old_size != @stack.size}
  end

  def test_clear
    @stack.clear!
    assert {@stack.to_a == []}
  end

  def test_empty
    assert {@stack.empty? == false}
  end
  # END
end



test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
