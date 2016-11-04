require 'pry'
require 'sinatra'

get '/' do
	erb :index
end

get '/mv' do
	erb :mv
end

get '/dir' do
	erb :dir
end

get '/ls' do
	erb :ls
end

get '/cd' do
	erb :cd
end

get '/mkdir' do
	erb :mkdir
end

get '/find' do
	erb :find
end

post '/find' do
	@search_term = params[:user_input]
	erb :find
end

not_found do
	status 404
	erb :not_found
end