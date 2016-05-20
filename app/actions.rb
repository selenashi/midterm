# Homepage (Root path)
require_relative 'views/helper'

get '/' do
  erb :index
end

get '/events' do
  @events = Event.all
  erb :'events/index'
end
