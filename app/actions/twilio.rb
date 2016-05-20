require 'rubygems'          # This line not needed for ruby > 1.8
require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/user/account
@account_sid = 'ACd457faa5071f4d14d07db69e0dc13157'
@auth_token = '6e2eb1b8a2a5abed7e72d60f46f44ca0'

@client = Twilio::REST::Client.new(@account_sid, @auth_token)

message = @client.messages.create(:body => "All in the game, yo",
    :to => '+17786285667',
    :from => '+17786539148')
puts message.body


