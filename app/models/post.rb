class Post < ActiveRecord::Base
	has_many :replies
	# def to_s
	# 	title
	# 	content
	# end
end
