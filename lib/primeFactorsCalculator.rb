class PrimeFactorsCalculator

  def calculate_prime_factors (number)
    prime_array = []
    p = 2
    if number < 2
      return prime_array
    end


    while p <= number
      if number % p == 0
        prime_array.push(p)
        number/=p
      end
      p +=1
    end

    return prime_array
  end
end
