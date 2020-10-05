SUITS = ['Hearts', 'Diamonds', 'Clubs', 'Spades']

deck = 
SUITS.each_with_object([]) do |suit_name, deck|
  deck << 13.times.each_with_object([]) do |card_index, suit|
    case card_index
    when 12 then suit << ["Ace", suit_name]
    when 11 then suit << ["King", suit_name]
    when 10 then suit << ["Queen", suit_name]
    when 9 then suit << ["Jack", suit_name]
    else
      if card_index < 9 then suit << [card_index + 2, suit_name] end 
    end
  end
end.flatten(1)

p deck.partition { |(value, suit)| suit == "Diamonds" }