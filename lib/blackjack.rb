def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(new_card_total)
  prompt_user
  input = get_user_input
  new_card_total
  
  if input == "h"
    deal_card + new_card_total
  elsif input == "s"
    new_card_total
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
 card_total = initial_round
until card_total > 21
  card_total = hit?(card_total)
  display_card_total(card_total)
  if card_total >= 16
    puts "Congrats, you win with a score of #{card_total}. Thanks for playing!"
    break
  end
end
 end_game(card_total)
end