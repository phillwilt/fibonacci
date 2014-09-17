# fibonnaci.rb

class Fibonacci
  def nth_number(fibonacci_index)
    return 1 unless fibonacci_index > 2
    nth_number_helper(1, 1, 3, fibonacci_index)
  end

  private

  def nth_number_helper(
                        fib_num_back_one,
                        fib_num_back_two,
                        current_index,
                        fibonacci_index
                        )
    current_fib_num = fib_num_back_two + fib_num_back_one

    if current_index == fibonacci_index
      current_fib_num
    else
      current_index += 1

      nth_number_helper(
                        current_fib_num,
                        fib_num_back_one,
                        current_index,
                        fibonacci_index
                        )
    end
  end
end
