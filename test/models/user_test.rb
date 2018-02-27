require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test 'name and email should be present' do
    @user.name = "                     "
    @user.email = "                    "
    assert_not @user.valid?
  end

  test 'name and email should not be too long' do
    @user.name = "a" * 51
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

end
