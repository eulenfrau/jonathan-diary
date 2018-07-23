require 'test_helper'

class AktuellControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aktuell_index_url
    assert_response :success
  end

end
