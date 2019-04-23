def fibonacci(num)
  return 1 if num <= 2
  fibonacci(num - 1) + fibonacci(num - 2)
end

p fibonacci(1) #== 1
p fibonacci(2) #== 1
p fibonacci(3) #== 2
p fibonacci(4) #== 3 #(1, 1, 2, 3)

# fib(3) + fib(2)
# fib(1) + fib(2) + fib(2)
# 3

p fibonacci(5) #== 5 #(1, 1, 2, 3, 5)

# fib(4) + fib(3)
# fib(2) + fib(3) + fib(1) + fib(2)
# fib(2) + fib(1) + fib(2) + fib(1) + fib(2)

p fibonacci(12) #== 144
p fibonacci(20) #== 6765
