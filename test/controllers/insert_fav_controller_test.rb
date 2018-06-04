require 'test_helper'

class InsertFavControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get insert_fav_create_url
    assert_response :success
  end

end
