require "test_helper"

class TeamControllerTest < ActionDispatch::IntegrationTest
  test "should get index_team" do
    get team_index_team_url
    assert_response :success
  end
end
