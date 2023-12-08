require 'numbers_in_words'
require 'numbers_in_words/duck_punch'


if ARGV.empty?
  data = DATA.readlines(chomp: true)
else
  data = File.readlines(ARGV[0], chomp: true)
end

# Part 2

def calibrate_value(first, last)
  first_number = convert(first)
  second_number = convert_reverse(last)
  total = (first_number.to_s + second_number.to_s).to_i
  total
end

def convert(value)
  value = value[0]
  if value.match(/\d/) 
    value
  else
    value.in_numbers
  end
end

def convert_reverse(value)
  value = value[0]
  if value.match(/\d/)
    value
  else
    value.reverse.in_numbers
  end
end

results = data
  .map { |line| first, last = line.match(/\d|one|two|three|four|five|six|seven|eight|nine/, 0), line.reverse.match(/\d|eno|owt|eerht|ruof|evif|xis|neves|thgie|enin/, 0)
        calibrate_value(first, last) }
  .sum

p results

__END__
two1nine
eightwothree
abcone2threexyz
xtwone3four
4nineeightseven2
zoneight234
7pqrstsixteen