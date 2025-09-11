require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    # Instance variables are auto avail. in all tests.
    @user = User.new(first_name: "alex", email: "alex@example.com")
  end  
  
  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.first_name = ""
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "first_name should not be too long" do
    @user.first_name = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end
end
