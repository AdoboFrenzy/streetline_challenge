require 'test_helper'

class StreetlineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get streetline_index_url
    assert_response :success
  end

end
