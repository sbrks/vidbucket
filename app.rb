class Vbucket < Sinatra::Base


# VIDEOS = ["https://www.youtube.com/watch?v=4ViOnukagG8", "http://youtube.com/fjdsal", "http://youtube.com/jfdaklsjdas"]

get '/' do
	# @videos = VIDEOS
	@videos = Video.all
	erb :index
end

#test video player route

get '/test-video-player' do
	erb :"test-video-player/index"
end

#RESTful video controller actions

#index
get '/videos' do
	@videos = Video.all
	erb(:"videos/index")
end

# new

get '/videos/new' do
	@video = Video.new
	erb(:"videos/new")
end

#create
post '/videos' do
	@video = Video.new(params[:video])
	if @video.save
		redirect("/videos/#{@video.id}")
	else
		erb (:"videos/new")
	end
end

#show
get '/videos/:id' do
	@video = Video.find(params[:id])
	erb(:"videos/show")
end


#edit
get '/videos/:id/edit' do
	@video = Video.find(params[:id])
	erb(:"videos/edit")
end

#update

put '/videos/:id' do
	@video = Video.find(params[:id])
	if @video.update_attributes(params[:video])
		redirect ("/videos/#{video.id}")
	else
		erb (:"videos/edit")
	end
end

delete '/videos/:id/delete' do
	@video = Video.find(params[:id])
	if @video.destroy
		redirect ('/videos')
	else
		redirect ("/videos/#{@video.id}")
	end
  end
end



# post 'video/create' do
# 	@video = Video.new(params[:video])
# 	# image_attachment = video.attachments.new
# 	# video_attachment = video.attachments.new
# 	# image_attachment.handle_upload(params['image-file'])
# 	# video_attachment.handle_upload(params['video-file'])
# 	if video.save
# 		redirect ("/video/#{@video.id}")
# 	else
# 		erb :new
# 	end

# 	erb :create
# 	#redirect to n


# 	#edit
# 	#delete - perform action and redirect to another view
# 	#aws (amazon web services) ec2 (media server)
# end



# end
