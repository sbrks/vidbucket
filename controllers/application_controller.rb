class ApplicationController < Sinatra::Base
	helpers ApplicationHelper

#set folder for templates to ../views, but make path absolute
set :views, File.expand_path('../views', __FILE__)