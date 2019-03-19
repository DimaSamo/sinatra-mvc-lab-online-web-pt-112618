require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/translation' do
    @latinizer=PigLatinizer.new(params[:user_input])
    erb :translation
  end

end
