require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "homepage" do
    get "/"
    expected = "What do you want to learn?"
    assert_select "h3", expected
    assert_response :success
  end

end
