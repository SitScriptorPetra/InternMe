require "test_helper"

class HelpGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @help_group = help_groups(:one)
  end

  test "should get index" do
    get help_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_help_group_url
    assert_response :success
  end

  test "should create help_group" do
    assert_difference("HelpGroup.count") do
      post help_groups_url, params: { help_group: { topic: @help_group.topic } }
    end

    assert_redirected_to help_group_url(HelpGroup.last)
  end

  test "should show help_group" do
    get help_group_url(@help_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_help_group_url(@help_group)
    assert_response :success
  end

  test "should update help_group" do
    patch help_group_url(@help_group), params: { help_group: { topic: @help_group.topic } }
    assert_redirected_to help_group_url(@help_group)
  end

  test "should destroy help_group" do
    assert_difference("HelpGroup.count", -1) do
      delete help_group_url(@help_group)
    end

    assert_redirected_to help_groups_url
  end
end
