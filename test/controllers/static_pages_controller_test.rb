require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "jLeague Baseball"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | jLeague Baseball"
  end

  test "should get about" do
  	get :about
  	assert_response :success
  	assert_select "title", "About | jLeague Baseball"
  end

  test "should get contact page" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | jLeague Baseball"
  end
  

end
