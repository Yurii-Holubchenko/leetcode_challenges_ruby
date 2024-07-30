# https://leetcode.com/problems/fizz-buzz/

# Test cases:
# n = 3
# n = 5
# n = 15

# Expected results:
# ["1","2","Fizz"]
# ["1","2","Fizz","4","Buzz"]
# ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]

def result_string(e)
  str = ""

  str << "Fizz" if (e % 3).zero?
  str << "Buzz" if (e % 5).zero?
  str << e.to_s if str.empty?

  str
end

# @param {Integer} n
# @return {String[]}

# :times solution
def fizz_buzz(n)
    result = []

    n.times do |e|
        e += 1
        result << result_string(e)
    end

    result
end

# :mao solution
def fizz_buzz(n)
  (1..n).map(&method(:result_string))
end
