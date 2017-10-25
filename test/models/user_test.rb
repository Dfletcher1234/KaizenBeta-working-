require 'test_helper'

class UserTest < ActiveSupport::TestCase

  setup do
    @user = users(:valid)
  end

  test "testing_fixture_valid" do
    assert @user.valid?
  end

  test "test_every_user_has_first_name" do
    @user.first_name = nil
    refute @user.valid?
  end

  test "testing_every_user_has_last_name" do
    @user.last_name = nil
    refute @user.valid?
  end

  test "testing_every_user_has_email" do
    @user.email = nil
    refute @user.valid?
  end

  test "testing_user_is_a_mentor" do
    @user.is_mentor = true
    refute @user.valid?
  end


end
