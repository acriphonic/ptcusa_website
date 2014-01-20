class Product < ActiveRecord::Base
	has_many :features, :dependent => :destroy
	has_many :applications, :dependent => :destroy
	has_many :resources, :dependent => :destroy, as: :downloadable
	accepts_nested_attributes_for :features, :reject_if => lambda { |a| a[:description].blank? }, :allow_destroy => true
	accepts_nested_attributes_for :applications, :reject_if => lambda { |a| a[:description].blank? }, :allow_destroy => true
	accepts_nested_attributes_for :resources, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true
end