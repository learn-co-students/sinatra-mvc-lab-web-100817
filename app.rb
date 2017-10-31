require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input

  end

  post '/piglatinize' do
    text_from_user = params[:user_phrase]
    @piglatinize = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end

end
