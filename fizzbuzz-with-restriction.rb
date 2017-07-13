#RULE: replacing any number divisible by three with the word "fizz", and any number divisible by five with the word "buzz".
#CONDITION: cannot use if(unless), case, while and ternary operator.

def dividable_by_3(i)
  (i % 3 == 0) && "fizz"
end

def dividable_by_5(i)
  (i % 5 == 0) && "buzz"
end

def dividable_by_15(i)
  (i % 15 == 0) && "fizzbuzz"
end

def judge_number(i)
  result = (dividable_by_15(i) || dividable_by_5(i) || dividable_by_3(i)) || i
  puts result
end

(1..100).each do |num|
  judge_number(num)
end
