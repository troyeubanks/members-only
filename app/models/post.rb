class Post < ActiveRecord::Base
	belongs_to :user

	validates :title, presence: true, uniqueness: true
	validates :body, presence: true

	def get_author_name
		User.find_by(id: self.user_id).name
	end
end
