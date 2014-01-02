class NewsUpdate < ActiveRecord::Base
	validates :title, presence: true
	validates :location, presence: true
	validates :update, presence: true
end
