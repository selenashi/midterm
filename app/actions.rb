# Homepage (Root path)
get '/' do
  erb :index
end

get '/events' do
  @events = Events.all
  erb :'events/index'
end
