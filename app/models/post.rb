class Post < ActiveRecord::Base
	has_and_belongs_to_many :categories
  belongs_to :author

	def link
		("/" + categories.first.url_name + "/" + urltext)
	end

	def full_link
		"http://localhost:3000" + link
	end


end
