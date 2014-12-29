  puts "Return Fibonacci sequence from 0 --> number you enter: up to 100"
  max = gets.chomp.to_i

  def fibonacci(max = 100)
    seed1 = 0
    seed2 = 1
    while not max or seed2 <= max
      yield seed2
      fibonacci()
      seed1, seed2 = seed2, seed1 + seed2
      p seed1
    end
  end

  fibonacci(max)
