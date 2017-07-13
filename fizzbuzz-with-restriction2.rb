#RULE: replacing any number divisible by three with the word "fizz", and any number divisible by five with the word "buzz".
#CONDITION: cannot use if(unless), case, while and ternary operator.

def dividable_by_3(i)
  i % 3 == 0 && i.to_s.replace("fizz")
end

def dividable_by_5(i)
  i % 5 == 0 && i.to_s.replace("buzz")
end

def dividable_by_15(i)
  i % 15 == 0 && i.to_s.replace("fizzbuzz")
end

def judge_number(i)
  puts dividable_by_15(i) || dividable_by_5(i) || dividable_by_3(i) || i
end

(1..100).each do |num|
  judge_number(num)
end
