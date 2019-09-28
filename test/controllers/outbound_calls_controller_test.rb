require 'test_helper'

class OutboundCallsControllerTest < ActionDispatch::IntegrationTest
  test "should get initiate_calling" do
    get outbound_calls_initiate_calling_url
    assert_response :success
  end

end
