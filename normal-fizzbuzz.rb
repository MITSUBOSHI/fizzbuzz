#RULE: replacing any number divisible by three with the word "fizz", and any number divisible by five with the word "buzz".

def dividable_by_3(i)
  puts "fizz" if i % 3 == 0
end

def dividable_by_5(i)
  puts "buzz" if i % 5 == 0
end

def dividable_by_15(i)
  puts "fizzbuzz" if i % 15 == 0
end

def judge_number(i)
  puts i unless dividable_by_15(i) || dividable_by_5(i) || dividable_by_3(i)
end

(1..100).each do |num|
  judge_number(num)
end
