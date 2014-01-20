class Download < ActiveRecord::Base
	has_many :resources, as: :downloadable, :dependent => :destroy
	accepts_nested_attributes_for :resources, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end
