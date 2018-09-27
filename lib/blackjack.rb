def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum1 = deal_card
  sum2 = deal_card
  sum = sum1 + sum2 
  display_card_total(sum)
  return sum
end

def hit? (card_total)
  prompt_user
  input = get_user_input
  if input == 's' 
    return card_total
  elsif input == 'h'
    card_total = card_total + deal_card
    return card_total
  else invalid_command
  end
end

def invalid_command
  return "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round 
  while card_total < 21 
    card_total = hit? (card_total)
    display_card_total (card_total)
  end
  end_game (card_total)
end
    
