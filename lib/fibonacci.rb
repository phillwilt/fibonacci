# fibonnaci.rb

class Fibonacci
  MIN_IDX = 2
  FIRST_FIB = 1
  SECOND_FIB = 1

  def nth_number(fib_idx)
    return FIRST_FIB unless fib_idx > MIN_IDX
    nth_number_helper(fib_idx, MIN_IDX + 1, FIRST_FIB, SECOND_FIB)
  end

  private

  def nth_number_helper(fib_idx, curr_idx, fib_back_one, fib_back_two)
    current_fib = fib_back_two + fib_back_one

    return current_fib if curr_idx == fib_idx
    nth_number_helper(fib_idx, curr_idx + 1, current_fib, fib_back_one)
  end
end
