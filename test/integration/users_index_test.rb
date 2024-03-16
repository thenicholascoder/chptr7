require "test_helper"

class UsersIndexTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
    @admin     = users(:michael)
    @non_admin = users(:archer)
  end


  # test "index including pagination" do
  #   log_in(@user)
  #   get users_path
  #   assert_template 'users/index'
  #   assert_select 'nav.pagination'
  #   assert_select 'ul.users' do
  #     assert_select 'li', count: User.page(1).count
  #     User.page(1).each do |user|
  #       assert_select "a[href='/users/#{user.id}']", text: user.name
  #     end
  #   end
  # end

  # test "index as admin including pagination and delete links" do
  #   log_in_as(@admin)
  #   get users_path
  #   assert_template 'users/index'
  #   assert_select 'div.pagination'
  #   first_page_of_users = User.paginate(page: 1)
  #   first_page_of_users.each do |user|
  #     assert_select 'a[href=?]', user_path(user), text: user.name
  #     unless user == @admin
  #       assert_select 'a[href=?]', user_path(user), text: 'delete'
  #     end
  #   end
  #   assert_difference 'User.count', -1 do
  #     delete user_path(@non_admin)
  #     assert_response :see_other
  #     assert_redirected_to users_url
  #   end
  # end

  # test "index as non-admin" do
  #   log_in_as(@non_admin)
  #   get users_path
  #   assert_select 'a', text: 'delete', count: 0
  # end
end
