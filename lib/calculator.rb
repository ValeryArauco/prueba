class Calculator
    def add(a, b)
      a + b
    end
  
    def subtract(a, b)
      a - b
    end
  
    def factorial(n)
      return 1 if n <= 1
      n * factorial(n - 1)
    end
  
    def fibonacci(n)
      return n if n <= 1
      fibonacci(n - 1) + fibonacci(n - 2)
    end
  end
  