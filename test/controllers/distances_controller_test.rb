require 'test_helper'

class DistancesControllerTest < ActionController::TestCase
  setup do
    @distance = distances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distance" do
    assert_difference('Distance.count') do
      post :create, distance: { cf: @distance.cf, lc: @distance.lc, lf: @distance.lf, lfl: @distance.lfl, rc: @distance.rc, rf: @distance.rf, rfl: @distance.rfl, stadium_id: @distance.stadium_id, wind_direction: @distance.wind_direction }
    end

    assert_redirected_to distance_path(assigns(:distance))
  end

  test "should show distance" do
    get :show, id: @distance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @distance
    assert_response :success
  end

  test "should update distance" do
    patch :update, id: @distance, distance: { cf: @distance.cf, lc: @distance.lc, lf: @distance.lf, lfl: @distance.lfl, rc: @distance.rc, rf: @distance.rf, rfl: @distance.rfl, stadium_id: @distance.stadium_id, wind_direction: @distance.wind_direction }
    assert_redirected_to distance_path(assigns(:distance))
  end

  test "should destroy distance" do
    assert_difference('Distance.count', -1) do
      delete :destroy, id: @distance
    end

    assert_redirected_to distances_path
  end
end
