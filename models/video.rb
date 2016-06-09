class Video < ActiveRecord::Base
	# mount_uploader :file, VideoUploader, mount_on: :file
	belongs_to :user

end
