require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Created.Software"
  end

  test "should get new" do
    get signup_path
    assert_select "title", "Signup | #{@base_title}"
    assert_response :success
  end
end
