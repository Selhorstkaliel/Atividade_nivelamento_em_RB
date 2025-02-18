people = []

15.times do |i|
    puts "Enter height for person#{i + 1}:"
    height = gets.to_f 
    puts "Enter gender (Masculino/Feminino) for person #{i + 1}:"
    gender = gets.chomp

    people << { height: height, gender: gender }
end

heights = people.map { |person| person[:height] }
max_height = heights.max
min_height = heights.min

male_heights = people.select { |person| person[:gender].casecmp('Masculino').zero? }.map { |person| person[:height] }
average_male_height = male_heights.sum / male_heights.size

female_count = people.count { |person| person[:gender].casecmp('Feminino').zero? }

puts "A maior altura do grupo: #{max_height}"
puts "A menor altura do grupo: #{min_height}"
puts "A média de altura das pessoas do gênero Masculino: #{average_male_height}"
puts "O número de pessoas do gênero Feminino: #{female_count}"