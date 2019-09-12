require 'test_helper'

class Admin::BaseControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get admin dashboard" do
    sign_in users(:john)
    get admin_root_path
    assert_response :success
    sign_out :user
  end

  test "should not get admin dashboard" do
    sign_in users(:jane)
    get admin_root_path
    assert_response :redirect
    #assert_are_on_home_page_now  and got flash error message
  end

end