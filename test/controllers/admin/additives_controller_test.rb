require "test_helper"

class Admin::AdditivesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_additives_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_additives_edit_url
    assert_response :success
  end
end
