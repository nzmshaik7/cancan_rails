require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get about_us" do
    get home_about_us_url
    assert_response :success
  end

  test "should get privacy" do
    get home_privacy_url
    assert_response :success
  end

end
