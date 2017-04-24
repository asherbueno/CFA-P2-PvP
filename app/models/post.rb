class Post < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: {
                    medium: "300x300>",
                    small: "200x200>",
                    thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
