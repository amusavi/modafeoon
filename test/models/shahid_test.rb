require 'test_helper'

class ShahidTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @shahid = Shahid.new(pname:"ali",ename: "shahis", bio: "some thing")
  end

  
    test "bio should be present" do
    @shahid.bio = ""
    assert_not @shahid.valid?
    end
 
 
   #test "associated comments should be destroyed" do
    #@shahid.save
    #@shahid.comments.create!(content: "la la la")
    #assert_difference 'comment.count', -1 do
    #  @shahid.destroy
    #end
  #end      
    #test "ename should be latin" do
    #@shahid.ename = "12$#f ali"
    #assert_not @shahid.valid?
   # end
end
