require 'test_helper'

class CardTest < ActiveSupport::TestCase
  
  def test_card_belongs_to_cardset
    card = create_valid_card
    card.cardset = cardsets(:one)
    assert card.save
    assert_kind_of(Array, cardsets(:one).cards)
    assert_not_nil cardsets(:one).cards.find(card)
  end
end
