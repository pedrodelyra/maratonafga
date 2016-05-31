class Question < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
	belongs_to :contest
end
