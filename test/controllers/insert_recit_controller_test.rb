require 'test_helper'

class InsertRecitControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get insert_recit_index_url
    assert_response :success
  end

end
