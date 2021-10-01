require 'test_helper'


class ArticlesControllerTest < ActionDispatch::IntegrationTest
    setup do
        
        @u = User.create!(id:5, email:"jbeachy@example.com", password:"guest4")
        @article = Article.create!(id:6, title: "Avengers Endgame", body: "I am inevitable", 
        status:"public", user_id:5)
      end



      test "should get index" do
        get "/"
        assert_response :success
      end

      test "should show article" do
        get articles_url(@article)
        assert_response :success
      end




end