class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_sections
  def post_id_and_title
    "#{id}. #{title}"
  end
end
