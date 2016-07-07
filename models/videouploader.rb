#require 'carrierwave'
# require 'rmagick'

class VideoUploader < CarrierWave::Uploader::Base


	#what kind of storage to use for this uploader
	storage :fog

	# #override directory where uploaded files will be stored

	# process :set_content_type
end
