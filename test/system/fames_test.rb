require "application_system_test_case"

class FamesTest < ApplicationSystemTestCase
  setup do
    @fame = fames(:one)
  end

  test "visiting the index" do
    visit fames_url
    assert_selector "h1", text: "Fames"
  end

  test "should create fame" do
    visit fames_url
    click_on "New fame"

    fill_in "Famenum", with: @fame.famenum
    click_on "Create Fame"

    assert_text "Fame was successfully created"
    click_on "Back"
  end

  test "should update Fame" do
    visit fame_url(@fame)
    click_on "Edit this fame", match: :first

    fill_in "Famenum", with: @fame.famenum
    click_on "Update Fame"

    assert_text "Fame was successfully updated"
    click_on "Back"
  end

  test "should destroy Fame" do
    visit fame_url(@fame)
    click_on "Destroy this fame", match: :first

    assert_text "Fame was successfully destroyed"
  end
end
