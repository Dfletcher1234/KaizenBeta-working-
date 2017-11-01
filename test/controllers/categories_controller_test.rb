require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "homepage" do
    get "/"
    expected = "What do you want to learn?"
    assert_select "h3", expected
    assert_response :success
  end

  test "navbar" do
    get "/"
    expected = "Log In"
    assert_select "ul.navbar-nav li.nav-item", expected
  end

  # test "test login" do
  #   get "/login"
  #   expected
  # end

end
