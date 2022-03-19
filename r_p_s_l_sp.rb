VALID_CHOICES = %w(rock paper scissors lizard spock)

player_score = 0
computer_score = 0

def prompt(message)
  Kernel.puts("=> #{message}")
end

=begin
def initial_only(x)
  if x == 'r' then return 'rock'
  elsif x == 'p' then return 'paper'
  elsif x == 'sc' then return 'scissors'
  elsif x == 'l' then return 'lizard'
  elsif x == 'sp' then return 'spock'
  else nil
end
=end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def score_keeper(player, computer)
  if win?(player, computer)
    player_score += 1
  elsif win?(computer, player)
    computer_score += 1
  else
  end
end

def display_winner(player_score, computer_score)
  if player_score == 3 || player_score % 3 != 0
    prompt("Player won the match!")
  elsif computer_score == 3 || computer_score  % 3 != 0
    prompt("Computer won the match!")
  else
  end
end

=begin
def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
     (player == 'paper' && computer == 'rock') ||
     (player == 'scissors' && computer == 'paper')
    prompt("You won!")
  elsif (player == 'rock' && computer == 'paper') ||
        (player == 'paper' && computer == 'scissors') ||
        (player == 'scissors' && computer == 'rock')
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end
=end

loop do

  choice = ''
  computer_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  score_keeper(choice, computer_choice)

  prompt("player score: #{player_score}; computer score: #{computer_score}! Fist one to 3 wins!")

  display_winner(player_score, computer_score)
  
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")


=begin

establish score variable for player
establish score variable for computer
display score variable when each round has completed
if player wins increment player score variable by 1
if computer wins increment computer variable by 1
display when either has won when their score is equal to 3


=end