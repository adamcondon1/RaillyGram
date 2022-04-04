require "application_system_test_case"

class NegativesTest < ApplicationSystemTestCase
  setup do
    @negative = negatives(:one)
  end

  test "visiting the index" do
    visit negatives_url
    assert_selector "h1", text: "Negatives"
  end

  test "should create negative" do
    visit negatives_url
    click_on "New negative"

    fill_in "Negativenum", with: @negative.negativenum
    click_on "Create Negative"

    assert_text "Negative was successfully created"
    click_on "Back"
  end

  test "should update Negative" do
    visit negative_url(@negative)
    click_on "Edit this negative", match: :first

    fill_in "Negativenum", with: @negative.negativenum
    click_on "Update Negative"

    assert_text "Negative was successfully updated"
    click_on "Back"
  end

  test "should destroy Negative" do
    visit negative_url(@negative)
    click_on "Destroy this negative", match: :first

    assert_text "Negative was successfully destroyed"
  end
end
