# Homepage (Root path)
 require_relative 'actions/my_event'
 

get '/' do
  erb :index
end

get '/events' do
  @events = Events.all
  erb :'events/index'
end
