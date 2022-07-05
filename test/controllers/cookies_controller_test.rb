require "test_helper"

class CookiesControllerTest < ActionDispatch::IntegrationTest
  test "should get set" do
    get cookies_set_url
    assert_response :success
  end

  test "should get show" do
    get cookies_show_url
    assert_response :success
  end

  test "should get delete" do
    get cookies_delete_url
    assert_response :success
  end
end
