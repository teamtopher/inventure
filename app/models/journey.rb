class Journey < ActiveRecord::Base
	has_many :clues 
	accepts_nested_attributes_for :clues, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

end