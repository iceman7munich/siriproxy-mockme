require 'cora'
require 'siri_objects'
require 'pp'

#Start the addon here!
class SiriProxy::Plugin::MockMe < SiriProxy::Plugin
  def initialize(config)
  end
  
#My plugin :D (used siriproxy-cleverbot.rb as an example)
#https://github.com/Ponyboy47/siriproxy-cleverbot/blob/master/lib/siriproxy-cleverbot.rb
#thank you Ponyboy47!!

  listen_for /mock me/i do #looking for someone to say "siri proxy mock me"
	response = ask "I will now mock you." #if they say that then siri will confirm the mocking and notify the user and then ask for input
	until response =~ /stop mocking me/i do #until the response is "siri proxy stop mocking me" she will still mock you
		mock = response		#puts the response into a tmp var to hold the text
		mock["Im"]= "You're" #Replaces Im with you're for example "Im dumb" siri being witty will respond "Your dumb"
		response = ask "#{mock}" #siri says mock which is response and then asks for input
	end #ends the loop from line 11 to 14
	say "I will stop mocking you now, LOL!" #tells the user she is done mocking
	request_completed #always complete your request! Otherwise the phone will "spin" at the user! (taken from siriproxy-example.rb)
  end
 end
 
 #https://github.com/Ponyboy47/siriproxy-cleverbot go there and packadge the file like a usual addon!