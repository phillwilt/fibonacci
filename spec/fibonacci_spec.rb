require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'

require 'fibonacci'

describe Fibonacci do

  it 'returns a number' do
    fibonacci = Fibonacci.new
    fibonacci.nth_number(1).must_be_kind_of Numeric
  end
end
