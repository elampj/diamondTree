class PostSection < ActiveRecord::Base
  belongs_to :post

  default_scope { order("priority ASC") }
end
