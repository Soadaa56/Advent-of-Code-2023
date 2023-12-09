if ARGV.empty?
  data = DATA.readlines(chomp: true)
else
  data = File.readlines(ARGV[0], chomp:true)
end

max_cubes = { "red" => "12", "green" => "13", "blue" => "14" }


def game_possible?(line, max_cubes)
  total_ids = 0
  id = line[0][-1].to_i
  rounds = line[1].split(";")
  rounds = rounds
        .map { |round| round.lstrip }
        .map { |round| round.split(", ") }
  
  if test_rounds(rounds)
    total_ids += id
  end
 p total_ids
end

def test_rounds(round)
  round.each do |round|
    test_pick(round)
  end
end

def test_pick(pick)
  p pick
end 
  


# rounds.each do |round|
#   round.each do |pick|
#     picked_cubes, color = pick.split
#     if max_cubes[color] > picked_cubes
#       return false
#     else
#       total_ids =+ id
#     end
#   end
# end

# x = 0
# y = 0
# until rounds[x] == nil
#   round = rounds[x].split(", ")
#   round.each do |pick|
#     picked_cubes, color = pick.split
#     break if picked_cubes > max_cubes[color]

#   end
#   x += 1
#   total_ids += id



results = data
    .map { |line| line.split(":") }
    .map { |line| game_possible?(line, max_cubes) }



results

__END__
Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green