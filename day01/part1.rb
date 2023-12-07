require 'numbers_in_words'
require 'numbers_in_words/duck_punch'


if ARGV.empty?
  data = DATA.readlines(chomp: true)
else
  data = File.readlines(ARGV[0], chomp: true)
end
# Part 1

# data.each do |line|
#   first_number = line.scan(/\d/).first
#   second_number = line.reverse.scan(/\d/).first

#   sum = first_number + second_number
#   total =+ sum
#   puts total
# end

# def calibration_value(line)
#   first_number = line[0]
#   second_number = line[-1]
#   sum = (first_number + second_number).to_i
# end


# results = data
#   .map { |line| line.scan(/\d/)}
#   .map { |line| calibration_value(line) }
#   .sum

# p results

# Part 2

def calibrate_value(line)
  first_number = convert(line[0])
  second_number = convert(line[-1])
  total = (first_number.to_s + second_number.to_s).to_i
  total
end

def convert(value)
  if value.match(/\d/) 
    value
  else
    value.in_numbers
  end
end

results = data
  .map { |line| line.scan(/\d|one|two|three|four|five|six|seven|eight|nine/) }
  .map { |line| calibrate_value(line) }
  .sum

  
p results
__END__
1abc2
pqr3stu8vwx
a1b2c3d4e5f
treb7uchet