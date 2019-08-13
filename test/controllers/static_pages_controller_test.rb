require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
    test "should get faqs page" do
        get faqs_url
        assert_response :success
    end

end
