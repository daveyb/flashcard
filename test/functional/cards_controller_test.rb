require 'test_helper'
#require File.dirname(__FILE__) + '/../test_helper'

class CardsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index, :cardset_id => cardsets(:one)
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  def test_should_get_new
    get :new, :cardset_id => cardsets(:one)
    assert_response :success
    assert_not_nil assigns(:card)
  end

  def test_should_not_create_invalid_card
    assert_no_difference('Card.count') do
      post :create, :cardset_id => cardsets(:one), :card => {}
    end

    assert_template "new"
  end
  
  def test_should_create_card
    assert_difference('Card.count') do
      post :create, :cardset_id => cardsets(:one), :card => {:position => 1}
    end
    
    assert_redirected_to cardset_card_path(:cardset_id => cardsets(:one), :id => assigns(:card))
  end

  def test_should_show_card
    get :show, :cardset_id => cardsets(:one), :id => cards(:one).id
    assert_response :success
    assert_not_nil assigns(:card)
  end

  def test_should_get_edit
    get :edit, :cardset_id => cardsets(:one), :id => cards(:one).id
    assert_response :success
  end

  def test_should_update_card
    put :update, :cardset_id => cardsets(:one).id, :id => cards(:one).id
    assert_redirected_to cardset_card_path(assigns(:card))
  end

  def test_should_destroy_card
    assert_difference('Card.count', -1) do
      delete :destroy, :cardset_id => cardsets(:one).id, :id => cards(:one).id
    end

    assert_redirected_to cardset_cards_path(cardsets(:one).id)
  end
end
