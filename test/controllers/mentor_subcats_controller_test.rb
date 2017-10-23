require 'test_helper'

class MentorSubcatsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mentor_subcats_new_url
    assert_response :success
  end

end
