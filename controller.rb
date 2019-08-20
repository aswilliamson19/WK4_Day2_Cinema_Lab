require ('sinatra')
require ('sinatra/reloader')

require_relative('./models/film')
require_relative('./models/screening')
also_reload('./models/*')

get '/films' do
  @films = Film.all
  erb(:home)
end

get '/films/:id' do
  @film = Film.find(params[:id].to_i)
  p @film
  erb(:film_details)
end
