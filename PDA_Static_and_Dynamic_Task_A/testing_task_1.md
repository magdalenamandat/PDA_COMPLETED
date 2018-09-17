### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame

  #CheckForAce if statement should use double equals "==" instead of just "="
  # Function could be refactored to just "if card.value == 1 end"
  #name convention, name of function should be check_for_ace
  def checkforAce(card)
    if card.value = 1
      return true
    else
      return false
    end
  end

 #Highest_Card function has a typo when defining the function name, using "dif" instead of "def"
 #Highest_card is not setting propperly the number of arguments, missing a "," between card1 and card2
 # Also in the if statement it should return card1.name, and in the else statement the return value should be card2.name
 # The function is not propperly indented.
 # Card class doesnt have Name propperty therefore should use .suit
  dif highest_card(card1 card2)
  if card1.value > card2.value
    return card.name
  else
    card2
  end
end
end

#Function self.cards_totals is out of spec. from CardGame.
# variable Total hasnt been correctly created. Missing "= 0"
# Return should be after the loop ends, and could use a string interpolation to return the total in the string --> "You have a total of #{total}"
def self.cards_total(cards)
  total
  for card in cards
    total += card.value
    return "You have a total of" + total
  end
end


```
