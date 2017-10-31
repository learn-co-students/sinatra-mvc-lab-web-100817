require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do

    erb :form
  end

  post '/piglatinize' do
    @output = params[:user_phrase]

    erb :output
  end

end
