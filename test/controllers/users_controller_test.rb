require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    # get users_new_url
    get signup_path   # Change from users_new_url to signup_path
    assert_response :success
  end
end