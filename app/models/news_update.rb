class NewsUpdate < ActiveRecord::Base
	validates :title, presence: true
	validates :location, presence: true
	validates :news, presence: true
end
