require 'Sinatra/base'

class MakersBnB < Sinatra::Base

  get '/' do
    erb:'homepage'
  end

  get '/spaces' do
    erb:'spaces'
  end

  get '/list-a-space' do
    erb:'newspace'
  end

  get '/sign-in' do
    erb:'signin'
  end

  get '/sign-up' do
    erb:'signup'
  end

  run! if app_file == $0
end
