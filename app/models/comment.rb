class Comment < ActiveRecord::Base
  belongs_to :shahid
  default_scope -> { order(created_at: :desc) }
  validates :shahid_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
