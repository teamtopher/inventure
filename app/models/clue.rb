class Clue < ActiveRecord::Base
	belongs_to :journey
	mount_uploader :image, ImageUploader

end
