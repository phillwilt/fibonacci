# fibonnaci.rb

class Fibonacci
  MIN_FIB_INDEX = 2
  FIRST_FIB_NUM = 1
  SECOND_FIB_NUM = 1

  def nth_number(fibonacci_index)
    return 1 unless fibonacci_index > MIN_FIB_INDEX
    nth_number_helper(fibonacci_index)
  end

  private

  def nth_number_helper(fibonacci_index, options = nil)
    options ||= {
                  fib_num_back_one: SECOND_FIB_NUM,
                  fib_num_back_two: FIRST_FIB_NUM,
                  current_index: 3
                }

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
