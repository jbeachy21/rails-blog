require 'test_helper'
 
class BlogFlowTest < ActionDispatch::IntegrationTest
  
  
  test "can see the articles dashboard" do
    get "/"
    assert_select "h3", "Welcome user"
  end

end