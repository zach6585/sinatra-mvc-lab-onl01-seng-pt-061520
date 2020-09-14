require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do
    a = PigLatinizer.new 
    puts 'here'
    @a= a.piglatinize(params[:user_phrase])
    puts 'here1'
    require 'pry'
    binding.pry
    erb :piglatinizer
  end 
end 