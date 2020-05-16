require 'sinatra'
require 'sinatra/reloader'

get '/' do
  File.read('public/views/index.html')
end

get '/public/months/:month' do
  month = params[:month]
  File.read("public/views/#{month}")
end