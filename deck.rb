# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card
  attr_reader :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end
end

class Deck
  attr_accessor :current_card, :remaining_cards 

  def initialize(input_options)
    @input = input_options 
    @card_number = 1
    @remaining_cards = input_options.length
    @current_card = 0
    #make the deck of card instances by calling deck_array method
    @deck = deck_array
  end

  def deck_array
    #  make a new card instance and put in hash info
    @deck_array = []
    index = 0

    @input.each do |key, value|
      card_name = "card#{@card_number}"
      card_name = Card.new(key, value)
      @deck_array << card_name
      @card_number += 1
    end 

    return @deck_array
  end
  
  def draw_card
    return @deck[current_card]
  end
end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

correct_answers = 0

while deck.remaining_cards > 0
  card = deck.draw_card 
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
    correct_answers += 1
  else
    puts "Incorrect!"
  end
  deck.current_card += 1
  deck.remaining_cards -= 1
  puts "*" * 20
end

puts "You got #{correct_answers} correct."

