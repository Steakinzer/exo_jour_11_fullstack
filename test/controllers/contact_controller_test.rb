require "test_helper"

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get index_contact" do
    get contact_index_contact_url
    assert_response :success
  end
end
