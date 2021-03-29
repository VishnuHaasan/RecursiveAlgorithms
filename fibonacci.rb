def fib(n)
  a = 0
  b = 1
  c = 0
  return 0 if n==0
  for i in 2..n
    c = a + b   
    a = b    
    b = c   
  end
  return b
end

def fib_rec(n,hash)
  return 0 if n==0
  return 1 if n == 1
  #Memoization:
  if hash[n].nil?
    hash[n] = fib_rec(n-1,hash) + fib_rec(n-2,hash)
  end
  return hash[n]
end
n = gets.chomp.to_i
puts fib(n)
puts fib_rec(n,Hash.new)
