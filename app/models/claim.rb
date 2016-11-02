class Claim < ActiveRecord::Base
	validates :answer, presence: true
	
	belongs_to :journey
	belongs_to :explorer, class_name: "User"
	belongs_to :creator, class_name: "User"
end
