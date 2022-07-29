require "test_helper"

class Admin::AllergiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_allergies_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_allergies_edit_url
    assert_response :success
  end
end
