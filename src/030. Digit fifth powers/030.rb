def sum_of_fifth_power(num)
  sum = 0
  while num > 0
    sum += (num % 10) ** 5
    num /= 10
  end
  sum
end

result = []
2.upto(999999) do |num|
  result << num if sum_of_fifth_power(num) == num
end

puts result.inject(:+)