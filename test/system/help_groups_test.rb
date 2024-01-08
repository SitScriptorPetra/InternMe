require "application_system_test_case"

class HelpGroupsTest < ApplicationSystemTestCase
  setup do
    @help_group = help_groups(:one)
  end

  test "visiting the index" do
    visit help_groups_url
    assert_selector "h1", text: "Help groups"
  end

  test "should create help group" do
    visit help_groups_url
    click_on "New help group"

    fill_in "Topic", with: @help_group.topic
    click_on "Create Help group"

    assert_text "Help group was successfully created"
    click_on "Back"
  end

  test "should update Help group" do
    visit help_group_url(@help_group)
    click_on "Edit this help group", match: :first

    fill_in "Topic", with: @help_group.topic
    click_on "Update Help group"

    assert_text "Help group was successfully updated"
    click_on "Back"
  end

  test "should destroy Help group" do
    visit help_group_url(@help_group)
    click_on "Destroy this help group", match: :first

    assert_text "Help group was successfully destroyed"
  end
end
