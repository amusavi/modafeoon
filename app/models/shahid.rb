class Shahid < ActiveRecord::Base
  validates :pname, presence: true
  
  VALID_REGEX=/^(?:[^\W_]|\s)*$/u
  validates :ename, presence: true,
                    format: { with: VALID_REGEX }
  validates :bio, presence: true
end
