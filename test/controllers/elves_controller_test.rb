require "test_helper"

class ElvesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get elves_index_url
    assert_response :success
  end

  test "should get show" do
    get elves_show_url
    assert_response :success
  end

  test "should get new" do
    get elves_new_url
    assert_response :success
  end
end
