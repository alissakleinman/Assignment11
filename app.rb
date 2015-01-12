require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'

set :database, "sqlite3:memberdatabase.sqlite3"

require './models'

get '/' do
	"Hello World"
end

get '/user' do
	id = params[:id]
	@u = User.find(id)
	erb :user
end



