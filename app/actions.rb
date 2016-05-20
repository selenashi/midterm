# Homepage (Root path)

require_relative 'actions/my_event'
require_relative 'views/helper'

helpers do
  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end
end


get '/' do
  erb :index
end

get '/events' do
  @events = Event.all
  erb :'events/index'
end

get '/events/:id' do
  @event = Event.find(params[:id])
  erb :'event_id'
end

