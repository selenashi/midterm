#perform callback (after_create) if num_users > min_required, send sms message 
# to all users registered for this event

require 'rubygems'          
require 'twilio-ruby'
#move to environment.rb


users_registered_for_event
#test numbers can only be used with account info
account_sid = "AC35193808fab269e3f2a5a031bcd562e6"
auth_token = 31425153a719eac4b1d1bd2974e5047a


@client = Twilio::REST::Client.new account_sid, auth_token

   
 for event_id if registrations.num_tickets >= events.min_required
  sms to users.phone_number


# def minimum_required_reached
#   @account_sid = 'ACd457faa5071f4d14d07db69e0dc13157'
#   @auth_token = '6e2eb1b8a2a5abed7e72d60f46f44ca0'

#   @client = Twilio::REST::Client.new(@account_sid, @auth_token)


#   message = @client.messages.create(
#     :body => "Hey! Good news! Enough people have signed up for your event to qualify
#     for the discounted price. Enjoy your Event! : )",
#     :to => '+17786285667',
#     :from => '+17786539148')
#   puts message.body

 
# end




