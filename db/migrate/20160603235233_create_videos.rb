class CreateVideos < ActiveRecord::Migration
	  def change
	  	create_table :videos do |t|
	  		t.string :name #add name of video creator
	  		t.string :video_url #add photo_url
	  		t.string :description #add video description
	  		t.timestamps #add timestamps for time created and time updated
	  	end
	end
end

