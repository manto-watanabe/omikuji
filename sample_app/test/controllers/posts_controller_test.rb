require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get result" do
    get posts_result_url
    assert_response :success
  end
end
