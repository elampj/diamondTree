class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :post_type
  belongs_to :access_level
  has_many :post_sections
  accepts_nested_attributes_for :post_sections

  def post_id_and_title
    "#{id}. #{title}"
  end
end
