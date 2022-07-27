require "test_helper"

class Piblic::MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get piblic_members_index_url
    assert_response :success
  end

  test "should get show" do
    get piblic_members_show_url
    assert_response :success
  end

  test "should get edit" do
    get piblic_members_edit_url
    assert_response :success
  end
end
