require "test_helper"

class MeshiterroControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meshiterro_index_url
    assert_response :success
  end
end
