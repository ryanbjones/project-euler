# If we list all the natural numbers below 10
# that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

# Strategy 1:
# Add all multiples of 3
# Add all multiples of 5
# Subtract multiples of 15

def multiples_of(value)
  multiples = []
  multiple = value
  while multiple < 1000
    multiples << multiple
    multiple += value
  end
  multiples
end

multiples_of(3).inject(:+) + multiples_of(5).inject(:+) - multiples_of(15).inject(:+)

# real == 0.000103
# 1000 times == 0.082275