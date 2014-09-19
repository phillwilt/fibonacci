require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'
require 'minitest/benchmark'

require 'fibonacci'

describe Fibonacci do

  it 'returns a number' do
    fibonacci = Fibonacci.new
    fibonacci.nth_number(1).must_be_kind_of Numeric
  end

  it 'returns first 15 correct Fibonacci numbers' do
    fibonacci_numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233,
                         377, 610]
    fibonacci = Fibonacci.new

    fibonacci_numbers.count.times do |i|
      fibonacci.nth_number(i + 1).must_equal fibonacci_numbers[i]
    end
  end

  it 'returns 300th fib number' do
    fibonacci = Fibonacci.new

    fibonacci.nth_number(300).must_equal 222232244629420445529739893461909967206666939096499764990979600
  end
end
