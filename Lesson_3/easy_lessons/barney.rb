flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

barney = flintstones.select do |key, value|
  key == "Barney"
end

p barney.to_a.flatten

p flintstones.assoc('Barney')