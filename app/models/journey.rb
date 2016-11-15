class Journey < ActiveRecord::Base
	has_many :clues 
	accepts_nested_attributes_for :clues, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

	 belongs_to :user
	 mount_uploader :image, ImageUploader
	 mount_uploader :first_image, First_imageUploader
	mount_uploader :validation, ValidationUploader

	 has_many :claims, :dependent => :destroy
	end
