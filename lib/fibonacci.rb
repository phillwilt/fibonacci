# fibonnaci.rb

class Fibonacci
  def nth_number(fibonacci_index)
    return 1
  end


  def nth_number(fibonacci_index)
    return 1 unless fibonacci_index > 2

    nth_number_helper(1,1,1,fibonacci_index)
  end

  private
  def nth_number_helper(
                        fib_num_back_one,
                        fib_num_back_two,
                        current_index,
                        fibonacci_index
                        )
  end
end
