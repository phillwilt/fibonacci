# fibonnaci.rb

class Fibonacci
  def nth_number(fibonacci_index)
    return 1 unless fibonacci_index > 2
    nth_number_helper(fibonacci_index)
  end

  private

  def nth_number_helper(fibonacci_index, options = nil)
    options ||= { fib_num_back_one: 1, fib_num_back_two: 1, current_index: 3 }

    current_fib_num = options.fetch(:fib_num_back_two) +
                      options.fetch(:fib_num_back_one)

    if options.fetch(:current_index) == fibonacci_index
      current_fib_num
    else
      options[:current_index] += 1
      options[:fib_num_back_two] = options.fetch(:fib_num_back_one)
      options[:fib_num_back_one] = current_fib_num
      nth_number_helper(fibonacci_index, options)
    end
  end
end
