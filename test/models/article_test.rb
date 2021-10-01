require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

    def setup
        @article = Article.new(title: "Avengers Endgame", body: "I am inevitable")
    end

   
 


    test "title should be present" do
        @article.title = " "
        assert_not @article.valid?
    end

   

    test "body should not be too short (and be present)" do
        @article.body = "aa"
        assert_not @article.valid?
    end


end