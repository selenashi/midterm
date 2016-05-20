#my_event actions

get '/my_events' do
  # TODO current_user.events
  @user_events = User.find(1).events
  erb :'my_event'
end

get '/registration/:event_id/remove' do 
  # TODO: change 3 by current_user.id
  Registration.find_by(event_id: params[:event_id], user_id: 1).destroy
  redirect '/my_events'
end

# post '/:user_id/events' do
#   @event = Event.find(params[:id])
#   # TODO what if we fail to delete the product?
#   if @event.destroy
#     "Product deleted!"
#   else
#     "There was an issue deleting that product"
#   redirect '/user_id/events'
#   end
# end
# get '/events/user_id/edit'
# end
