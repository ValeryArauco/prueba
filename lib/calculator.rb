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
  


  def process_data(data)
    result = []
  
    data.each do |item|
      if item[:type] == 'A'
        if item[:value] > 10
          result << item[:value] * 2
        else
          result << item[:value] + 5
        end
      elsif item[:type] == 'B'
        case item[:category]
        when 'X'
          result << item[:value] * 3
        when 'Y'
          if item[:value] % 2 == 0
            result << item[:value] / 2
          else
            result << item[:value] + 10
          end
        else
          result << item[:value] - 5
        end
      else
        (1..item[:value]).each do |i|
          result << i if i.even?
        end
      end
    end
  
    if result.empty?
      puts "No data processed"
    elsif result.size > 20
      puts "Too many results"
    else
      puts "Data processed successfully"
    end
  
    result
  end
  