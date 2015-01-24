require 'test_helper'

class CustonRoutesTest < ActionDispatch::IntegrationTest
  test "that the /login route opens the login page" do
    get '/login'
    assert_response :success
  end

  test "that the /logout route opens the logout page" do
    get '/logout'
    assert_response :redirect
    assert_redirected_to '/'
  end

  test "that the /register route opens the reg page" do
    get '/register'
    assert_response :success
  end
end
