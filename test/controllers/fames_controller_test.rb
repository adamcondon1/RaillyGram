require "test_helper"

class FamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fame = fames(:one)
  end

  test "should get index" do
    get fames_url
    assert_response :success
  end

  test "should get new" do
    get new_fame_url
    assert_response :success
  end

  test "should create fame" do
    assert_difference("Fame.count") do
      post fames_url, params: { fame: { famenum: @fame.famenum } }
    end

    assert_redirected_to fame_url(Fame.last)
  end

  test "should show fame" do
    get fame_url(@fame)
    assert_response :success
  end

  test "should get edit" do
    get edit_fame_url(@fame)
    assert_response :success
  end

  test "should update fame" do
    patch fame_url(@fame), params: { fame: { famenum: @fame.famenum } }
    assert_redirected_to fame_url(@fame)
  end

  test "should destroy fame" do
    assert_difference("Fame.count", -1) do
      delete fame_url(@fame)
    end

    assert_redirected_to fames_url
  end
end
