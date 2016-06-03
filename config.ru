
require 'rubygems'
require 'bundler'
require 'sinatra'
require 'sinatra/activerecord'

Bundler.require

require './app'

run App


#map the controllers to routes

#map ('/videos') {run VideoController}
#map ('/') {run ApplicationController}
