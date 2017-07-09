require 'test_helper'

class TsukureposControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tsukurepos_new_url
    assert_response :success
  end

  test "should get create" do
    get tsukurepos_create_url
    assert_response :success
  end

end
