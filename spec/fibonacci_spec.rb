require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'

require 'fibonacci'

describe Fibonacci do

  it 'returns a number' do
    fibonacci = Fibonacci.new
    fibonacci.nth_number(1).must_be_kind_of Numeric
  end

  it 'returns 1 for the first Fibonacci number' do
    fibonacci = Fibonacci.new
    assert_equal 1, fibonacci.nth_number(1)
  end

  it 'returns 1 for the second Fibonacci number' do
    fibonacci = Fibonacci.new
    assert_equal 1, fibonacci.nth_number(1)
  end

  it 'returns correct Fibonacci numbers' do
    fibonacci_numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233,
                         377, 610]
    fibonacci = Fibonacci.new

    fibonacci_numbers.count.times do |i|
      assert_equal fibonacci_numbers[i], fibonacci.nth_number(i + 1)
    end
  end
end
