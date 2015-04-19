require 'test_helper'

class DefensesControllerTest < ActionController::TestCase
  setup do
    @defense = defenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create defense" do
    assert_difference('Defense.count') do
      post :create, defense: { balk: @defense.balk, bfrp: @defense.bfrp, bfsp: @defense.bfsp, error: @defense.error, hold: @defense.hold, passedball: @defense.passedball, pickoff: @defense.pickoff, player_id: @defense.player_id, position: @defense.position, rest0: @defense.rest0, rest1: @defense.rest1, rest2: @defense.rest2, rest3: @defense.rest3, rnge: @defense.rnge, throw: @defense.throw, wp: @defense.wp }
    end

    assert_redirected_to defense_path(assigns(:defense))
  end

  test "should show defense" do
    get :show, id: @defense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @defense
    assert_response :success
  end

  test "should update defense" do
    patch :update, id: @defense, defense: { balk: @defense.balk, bfrp: @defense.bfrp, bfsp: @defense.bfsp, error: @defense.error, hold: @defense.hold, passedball: @defense.passedball, pickoff: @defense.pickoff, player_id: @defense.player_id, position: @defense.position, rest0: @defense.rest0, rest1: @defense.rest1, rest2: @defense.rest2, rest3: @defense.rest3, rnge: @defense.rnge, throw: @defense.throw, wp: @defense.wp }
    assert_redirected_to defense_path(assigns(:defense))
  end

  test "should destroy defense" do
    assert_difference('Defense.count', -1) do
      delete :destroy, id: @defense
    end

    assert_redirected_to defenses_path
  end
end
