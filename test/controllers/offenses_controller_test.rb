require 'test_helper'

class OffensesControllerTest < ActionController::TestCase
  setup do
    @offense = offenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offense" do
    assert_difference('Offense.count') do
      post :create, offense: { df: @offense.df, ifr: @offense.ifr, ofr: @offense.ofr, player_id: @offense.player_id, power: @offense.power, vs_hand: @offense.vs_hand }
    end

    assert_redirected_to offense_path(assigns(:offense))
  end

  test "should show offense" do
    get :show, id: @offense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offense
    assert_response :success
  end

  test "should update offense" do
    patch :update, id: @offense, offense: { df: @offense.df, ifr: @offense.ifr, ofr: @offense.ofr, player_id: @offense.player_id, power: @offense.power, vs_hand: @offense.vs_hand }
    assert_redirected_to offense_path(assigns(:offense))
  end

  test "should destroy offense" do
    assert_difference('Offense.count', -1) do
      delete :destroy, id: @offense
    end

    assert_redirected_to offenses_path
  end
end
