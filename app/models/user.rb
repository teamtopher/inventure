class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :journeys, :dependent => :destroy

   has_many :creator_history, class_name: "Claim", foreign_key: "creator_id"
  has_many :explorer_history, class_name: "Claim", foreign_key: "explorer_id"
end
