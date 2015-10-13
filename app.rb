require 'bundler'
Bundler.require()

require './models/koala'

get '/' do
  erb :index
end

# INDEX: Koalas JSON
get '/api/koalas' do
  content_type :json
  koalas = Koala.all
  koalas.to_json
end

# SHOW: Koala JSON
get '/api/koalas/:id' do
  content_type :json
  koala = Koala.find(params[:id].to_i)
  koala.to_json
end
