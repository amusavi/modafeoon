require 'test_helper'

class ShahidTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @shahid = Shahid.new(pname:"علیرضا",ename: "shahis", bio: "در اینجا زاده شد")
  end

  
    test "bio should be present" do
    @shahid.bio = "     "
    assert_not @shahid.valid?
    end
    
    test "ename should be latin" do
    @shahid.ename = "12$#f ali"
    assert_not @shahid.valid?
    end
end
