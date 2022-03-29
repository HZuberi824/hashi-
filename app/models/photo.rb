class Photo < ApplicationRecord


	has_many_attached :avatars
	has_many :comments, dependent: :destroy

	accepts_nested_attributes_for :comments
	mount_uploader :avatar, AvatarUploader



	def abc
 		"#{description} #{created_at.strftime("%F")}"
 	end
 	
 	
end
