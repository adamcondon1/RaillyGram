require 'test_helper'

class PostDecoratorTest < Draper::TestCase
  test "should get full_post" do
    get posts_url
    assert_response :success
  end
end
