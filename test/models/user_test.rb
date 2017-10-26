require 'test_helper'

class UserTest < ActiveSupport::TestCase

  setup do
    @user = users(:valid)
  end

  test "testing_fixture_valid" do
    assert @user.valid?
  end

  test "testing_mentor_is_false_default" do
    assert_equal @user.is_mentor, false
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
    skip
    assert_includes User.mentors, users(:mentor)
    refute_includes
  end

  # test "testing_user_password_digest_valid"



end
