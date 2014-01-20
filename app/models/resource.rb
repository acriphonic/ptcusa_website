class Resource < ActiveRecord::Base
	belongs_to :downloadable, polymorphic: true
end
