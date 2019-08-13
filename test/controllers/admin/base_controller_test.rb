require 'test_helper'

class Admin::BaseControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get dashboard" do
    sign_in users(:john)
    get admin_root_path
    assert_response :success
    sign_out :user
  end

end