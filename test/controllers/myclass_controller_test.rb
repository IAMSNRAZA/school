require 'test_helper'

class MyclassControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get myclass_new_url
    assert_response :success
  end

end
