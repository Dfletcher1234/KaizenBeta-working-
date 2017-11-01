require "application_system_test_case"
class LoginTest < ApplicationSystemTestCase

  test "test login" do
    visit login_path
    fill_in "session_email", with: "jesse@oils.com"
    fill_in "session_password", with: "1234"
    click_on "login_btn"
    assert_selector "label", text: "Summary"

  end

end
