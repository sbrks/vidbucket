require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require 'active_record'
require './models/video' #video class
require 'bundler'

Bundler.require

class App < Sinatra::Base

	register Sinatra::ActiveRecordExtension

VIDEOS = ["https://www.youtube.com/watch?v=4ViOnukagG8", "http://youtube.com/fjdsal", "http://youtube.com/jfdaklsjdas"]

get '/' do
	@videos = VIDEOS
	erb :index
	"Hello, World!"
end

end
