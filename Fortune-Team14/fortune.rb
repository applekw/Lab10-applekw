require 'sinatra/base'
require 'haml'
require 'thin'

class Fortune < Sinatra::Base
            
  get '/fortune/random/?' do
    @fortune = $fortunes[rand($fortunes.size)]
    haml :random
  end

  get '/fortune/get/:fid' do
    @fortune = $fortunes[params[:fid].to_i]
    haml :specific
  end 
  
end


require 'fortunedata'