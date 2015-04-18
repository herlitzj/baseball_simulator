require 'test_helper'

class SkiesControllerTest < ActionController::TestCase
  setup do
    @sky = skies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sky" do
    assert_difference('Sky.count') do
      post :create, sky: { location_id: @sky.location_id, max: @sky.max, min: @sky.min, month: @sky.month, sky: @sky.sky }
    end

    assert_redirected_to sky_path(assigns(:sky))
  end

  test "should show sky" do
    get :show, id: @sky
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sky
    assert_response :success
  end

  test "should update sky" do
    patch :update, id: @sky, sky: { location_id: @sky.location_id, max: @sky.max, min: @sky.min, month: @sky.month, sky: @sky.sky }
    assert_redirected_to sky_path(assigns(:sky))
  end

  test "should destroy sky" do
    assert_difference('Sky.count', -1) do
      delete :destroy, id: @sky
    end

    assert_redirected_to skies_path
  end
end
