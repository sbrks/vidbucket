# require './helpers/videohelper'

class Vbucket < Sinatra::Base
	include VideoHelper

	get '/' do

		@videos = Video.order(id: :desc).all
		erb :index
	end

	#create
	post '/' do

		@user = User.create(params[:users])
		@videos = Video.create(params[:videos])

		@vid_id = vidembed(@videos.video_url)
		puts @vid_id

		erb :index

	end

#show one video -->works! shows one video
	get "/videos/:id" do
		@videos = Video.find(params[:id])
		@youtube_id = @videos.video_url.split("=").last
		erb (:"videos/show")
	end

#show all videos -->works! shows all videos
	get '/videos' do
		@videos = Video.all
		erb(:index)
	end


# get '/' do
# 	# @videos = VIDEOS
# 	@videos = Video.all
# 	@upload = VideoUploader
# 	erb :index
# end


#RESTful video controller actions

#6.8 update - post to root

# get '/' do
# 	@upload = VideoUploader.all
# 	erb :index
# end

post '/videos/new' do
		@user = User.new(params[:users])
		@videos = Video.new(params[:videos])

		if @video.save && user.save 
			redirect ("/videos/#{video.id}")
		else
			erb(:"videos/new")
end

get '/videos/new' do
	@videos = Video.all
	erb (:"videos/new")
end
end


# # #create
# # post '/videos' do
# 	@video = Video.new(params[:video])
# 	if @video.save
# 		redirect("/videos/#{@video.id}")
# 	else
# # 		erb (:"videos/new")
# # 	end
# # end


# post '/submit' do
# 	@upload = VideoUploader.new
# 	@upload.file = params[:video]
# 	if @upload.save
# 	  redirect ("/")
# else 
# erb (:"videos/new")
# end




# # #create
# # post '/videos' do
# 	@video = Video.new(params[:video])
# 	if @video.save
# 		redirect("/videos/#{@video.id}")
# 	else
# # 		erb (:"videos/new")
# # 	end
# # end

#show


# #index
# get '/videos' do
# 	@videos = Video.all
# 	erb(:"videos/index")
# end

# new

# get '/new' do
# 	@videos = Video.new
# 	erb(:"new")
# end



# #show
# get '/videos/:id' do
# 	@video = Video.find(params[:id])
# 	erb(:"videos/show")
# end


# #edit
# get '/videos/:id/edit' do
# 	@video = Video.find(params[:id])
# 	erb(:"videos/edit")
# end

# #update

# put '/videos/:id' do
# 	@video = Video.find(params[:id])
# 	if @video.update_attributes(params[:video])
# 		redirect ("/videos/#{video.id}")
# 	else
# 		erb (:"videos/edit")
# 	end
# end

# delete '/videos/:id/delete' do
# 	@video = Video.find(params[:id])
# 	if @video.destroy
# 		redirect ('/videos')
# 	else
# 		redirect ("/videos/#{@video.id}")
# 	end




# end
end
