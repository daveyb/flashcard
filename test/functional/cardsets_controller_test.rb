require 'test_helper'

class CardsetsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:cardsets)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_cardset
    assert_difference('Cardset.count') do
      post :create, :cardset => {:name => "blah", :description => "blah", :user => "blah"}
    end

    assert_redirected_to cardset_path(assigns(:cardset))
  end

  def test_should_show_cardset
    get :show, :id => cardsets(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => cardsets(:one).id
    assert_response :success
  end

  def test_should_update_cardset
    put :update, :id => cardsets(:one).id, :cardset => { }
    assert_redirected_to cardset_path(assigns(:cardset))
  end

  def test_should_destroy_cardset
    assert_difference('Cardset.count', -1) do
      delete :destroy, :id => cardsets(:one).id
    end

    assert_redirected_to cardsets_path
  end
end
