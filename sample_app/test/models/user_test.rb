require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "example", email: "example@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name is a required field" do
    @user.name = " "
    assert_not @user.valid?
  end

  test "email is a required field" do
    @user.email = " "
    assert_not @user.valid?
  end

  test "users name can not be longer than 50 char" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end
end
