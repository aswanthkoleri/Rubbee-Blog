class Post < ApplicationRecord
	# attr_accessor :title, :body, :category_id, :author_id
	belongs_to :category
	belongs_to :user
end
