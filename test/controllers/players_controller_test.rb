require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post :create, player: { bat: @player.bat, bunt: @player.bunt, dldays: @player.dldays, durability: @player.durability, first_name: @player.first_name, hand: @player.hand, jump: @player.jump, last_name: @player.last_name, player_type: @player.player_type, run: @player.run, steal: @player.steal, team_id: @player.team_id, wild: @player.wild }
    end

    assert_redirected_to player_path(assigns(:player))
  end

  test "should show player" do
    get :show, id: @player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player
    assert_response :success
  end

  test "should update player" do
    patch :update, id: @player, player: { bat: @player.bat, bunt: @player.bunt, dldays: @player.dldays, durability: @player.durability, first_name: @player.first_name, hand: @player.hand, jump: @player.jump, last_name: @player.last_name, player_type: @player.player_type, run: @player.run, steal: @player.steal, team_id: @player.team_id, wild: @player.wild }
    assert_redirected_to player_path(assigns(:player))
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete :destroy, id: @player
    end

    assert_redirected_to players_path
  end
end
