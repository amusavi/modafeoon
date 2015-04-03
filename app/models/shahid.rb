# encoding: UTF-8

require "net/http"

class Shahid < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  attr_accessor :picture_width, :picture_height
  before_save { self.ename = ename.downcase }
  
  validates :pname,  presence: true, length: { maximum: 50, minimum: 6 }, format: { :with =>  /\A([\u0600-\u06FF\uFB8A\u067E\u0686\u06AF_., !()+=-]+\s?)+\Z/}, uniqueness: true
  validates :bio, presence: true, length: { maximum: 950 } #, format: { :with =>  /\A([\u0600-\u06FF\uFB8A\u067E\u0686\u06AF_., !()+=-]+\s?)+\Z/}
  validates :ename,  presence: true, length: { maximum: 50, minimum: 6 }, format: { :with =>  /\A([0-9a-zA-Z_., !()+=-]+\s?)+\Z/}, uniqueness: true
  validates :link1, :format => URI::regexp(%w(http https)), presence: true, length: { maximum: 200 }
  validates :link2, :format => URI::regexp(%w(http https)), presence: true, length: { maximum: 200 }
  validates :link3, :format => URI::regexp(%w(http https)), presence: true, length: { maximum: 200 }
  
  mount_uploader :picture, PictureUploader, presence: true
  validates_format_of :picture, :with => %r{\.(png|jpg|jpeg)\Z}i, :message => "just jpg,jpeg and png are allowed"
  
  def feed
    Comment.where("shahid_id = ?", id)
  end
  #validate :check_dimensions, :on => :create
  #def check_dimensions
  #  if !picture_cache.nil? && !(picture.width == 600 && picture.height == 300)
  #    errors.add :picture, "Dimension is false."
  #  end
  #end


end
