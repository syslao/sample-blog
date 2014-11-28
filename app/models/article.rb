class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :text, presence: true
  has_many :comments
  has_attached_file :avatar, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
