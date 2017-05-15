options = ["Pierre", "Feuille", "Ciseaux"]
computer_choice = options.sample

puts "Choisis parmi Pierre, Feuille ou ciseaux !"
user_choice = gets.chomp

until options.include? (user_choice)
  puts "Choisis pour de vrai"
  user_choice = gets.chomp
end

if user_choice == computer_choice
  puts "Rejoue"
elsif user_choice == "Feuille"
  if computer_choice == "Pierre"
    puts "Gagné"
  elsif computer_choice == "Ciseaux"
    puts "Perdu"
  end
elsif user_choice == "Pierre"
  if computer_choice == "Ciseaux"
    puts "Gagné"
  elsif computer_choice == "Feuille"
    puts "Perdu"
  end
elsif user_choice == "Ciseaux"
  if computer_choice == "Feuille"
    puts "Gagné"
  elsif computer_choice == "Pierre"
    puts "Perdu"
  end
end



___



# Exercice : jouer à Pierre / Feuille / Ciseaux
# 2 joueurs : ordinateur et utilisateur
# On compare les résultats des 2 joueurs


options = ["Pierre", "Feuille", "Ciseaux"]
computer_choice = options.sample

puts "Choisis : Pierre, Feuille ou Ciseaux"
user_choice = gets.chomp

until options.include? (user_choice)
   puts "Choisis pour de vrai"
   user_choice = gets.chomp
end

if user_choice == computer_choice
  puts "Rejoue"
elsif user_choice == "Feuille"
  if computer_choice == "Pierre"
    puts "You win"
  elsif computer_choice == "Ciseaux"
    puts "You lose"
  end
elsif user_choice == "Pierre"
  if computer_choice == "Ciseaux"
    puts "You win"
  elsif computer_choice == "Feuille"
    puts "You lose"
  end
elsif user_choice == "Ciseaux"
  if computer_choice == "Feuille"
    puts "You win"
  elsif computer_choice == "Pierre"
    puts "You lose"
  end
end


