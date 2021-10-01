require 'test_helper'

class CommentTest < ActiveSupport::TestCase

    def setup
        @comment = Comment.new(commenter: "Jasper", body: "The IT Crowd is a great show")
    end


    test "commenter should be present" do
        @comment.commenter = " "
        assert_not @comment.valid?
    end

   

    test "body should not be too short (and be present)" do
        @comment.body = "aa"
        assert_not @comment.valid?
    end


end