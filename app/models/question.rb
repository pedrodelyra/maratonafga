class Question < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader
end
