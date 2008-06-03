require 'test_helper'

class CardsetTest < ActiveSupport::TestCase
  fixtures :cardsets
  
  def test_valid_cardset
    assert_difference 'Cardset.count' do
      cardset = create_valid_cardset
      assert_nothing_raised{cardset.save}
    end
  end
  
  def test_invalid_cardset
    assert_no_difference 'Cardset.count' do
      cardset = create_blank_cardset
      assert !cardset.valid?
      [:name, :description, :user].each do |field|
        assert cardset.errors.invalid?(field)
        assert_match(/can't be blank/, cardset.errors.on(field).to_s)
      end
    end
  end
end
