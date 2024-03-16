require "test_helper"

class UserShowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  #
  def setup
    @admin = users(:michael)
    @unactivated = users(:malory)
    @activated = users(:warren)
  end

  test "should redirect when not activated" do
    log_in_as(@admin)
    get user_path(@unactivated)
    assert_redirected_to root_url
  end

  test "successful show for activated user" do
    log_in_as(@admin)
    get user_path(@activated)
    assert_template 'users/show'
  end
end
