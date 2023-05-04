def badge_maker name
  "Hello, my name is #{name}."
end

def batch_badge_creator names
  names.map{ |name| "Hello, my name is #{name}."}
end

def assign_rooms speakers
  array = []
  speakers.each.with_index(1) do |speaker, index|
    array << "Hello, #{speaker}! You'll be assigned to room #{index}!"
  end
  array
end

def printer speakers
  puts batch_badge_creator(speakers).each do |line|
    puts line
  end
  assign_rooms(speakers).each do |line|
    puts line
  end
end

puts printer ['matty', 'gaby']