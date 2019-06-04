require "application_system_test_case"

class ObjectNamesTest < ApplicationSystemTestCase
  setup do
    @object_name = object_names(:one)
  end

  test "visiting the index" do
    visit object_names_url
    assert_selector "h1", text: "Object Names"
  end

  test "creating a Object name" do
    visit object_names_url
    click_on "New Object Name"

    click_on "Create Object name"

    assert_text "Object name was successfully created"
    click_on "Back"
  end

  test "updating a Object name" do
    visit object_names_url
    click_on "Edit", match: :first

    click_on "Update Object name"

    assert_text "Object name was successfully updated"
    click_on "Back"
  end

  test "destroying a Object name" do
    visit object_names_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Object name was successfully destroyed"
  end
end
