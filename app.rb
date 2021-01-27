require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        text_from_user = params[:user_phrase]
        @analyzed_text = PigLatinizer.new.piglatinize(text_from_user)
        erb :piglatinize
    end


end