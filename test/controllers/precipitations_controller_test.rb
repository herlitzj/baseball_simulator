require 'test_helper'

class PrecipitationsControllerTest < ActionController::TestCase
  setup do
    @precipitation = precipitations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:precipitations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create precipitation" do
    assert_difference('Precipitation.count') do
      post :create, precipitation: { location_id: @precipitation.location_id, max: @precipitation.max, min: @precipitation.min, month: @precipitation.month, precip: @precipitation.precip }
    end

    assert_redirected_to precipitation_path(assigns(:precipitation))
  end

  test "should show precipitation" do
    get :show, id: @precipitation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @precipitation
    assert_response :success
  end

  test "should update precipitation" do
    patch :update, id: @precipitation, precipitation: { location_id: @precipitation.location_id, max: @precipitation.max, min: @precipitation.min, month: @precipitation.month, precip: @precipitation.precip }
    assert_redirected_to precipitation_path(assigns(:precipitation))
  end

  test "should destroy precipitation" do
    assert_difference('Precipitation.count', -1) do
      delete :destroy, id: @precipitation
    end

    assert_redirected_to precipitations_path
  end
end
