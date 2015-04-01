require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
   def setup
    @shahid = shahids(:shahid1)
    # This code is not idiomatically correct.
    @comment = @shahid.comments.build(content: "something about shahid")
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "shahid id should be present" do
    @comment.shahid_id = nil
    assert_not @comment.valid?
  end
  
  test "content should be present " do
    @comment.content = "   "
    assert_not @comment.valid?
  end

  test "content should be at most 140 characters" do
    @comment.content = "a" * 141
    assert_not @comment.valid?
  end
  
  test "order should be most recent first" do
    assert_equal Comment.first, comments(:most_recent)
  end
  
end
