def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return 1 + rand(11)
end

def display_card_total (cards)
  # code #display_card_total here
  puts "Your cards add up to #{cards}" 
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp 
end

def end_game (cards)
  # code #end_game here
  puts "Sorry, you hit #{cards}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit? (total)
  # code hit? here
  prompt_user
  choice = get_user_input
  if choice == "h"
    total+=deal_card
  end
  return total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total <= 21 do
    total = hit?(total)
    if total > 21
      display_card_total(total)
      end_game(total)
    else 
      display_card_total(total)
    end
  end
end
    
