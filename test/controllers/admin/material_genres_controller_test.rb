require "test_helper"

class Admin::MaterialGenresControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_material_genres_new_url
    assert_response :success
  end

  test "should get index" do
    get admin_material_genres_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_material_genres_edit_url
    assert_response :success
  end
end
