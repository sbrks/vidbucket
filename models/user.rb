class User < ActiveRecord::Base
  has_many :videos
  # mount_uploader :upload, Uploader

end
