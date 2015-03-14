class Shahid < ActiveRecord::Base
  before_save { self.ename = ename.downcase }
  validates :pname,  presence: true, length: { maximum: 50 }
  
  validates :pname,  presence: true, length: { maximum: 50 }
  validates :bio, presence: true
end
