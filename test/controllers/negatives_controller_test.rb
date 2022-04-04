require "test_helper"

class NegativesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @negative = negatives(:one)
  end

  test "should get index" do
    get negatives_url
    assert_response :success
  end

  test "should get new" do
    get new_negative_url
    assert_response :success
  end

  test "should create negative" do
    assert_difference("Negative.count") do
      post negatives_url, params: { negative: { negativenum: @negative.negativenum } }
    end

    assert_redirected_to negative_url(Negative.last)
  end

  test "should show negative" do
    get negative_url(@negative)
    assert_response :success
  end

  test "should get edit" do
    get edit_negative_url(@negative)
    assert_response :success
  end

  test "should update negative" do
    patch negative_url(@negative), params: { negative: { negativenum: @negative.negativenum } }
    assert_redirected_to negative_url(@negative)
  end

  test "should destroy negative" do
    assert_difference("Negative.count", -1) do
      delete negative_url(@negative)
    end

    assert_redirected_to negatives_url
  end
end
