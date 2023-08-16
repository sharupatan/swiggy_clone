class HomeController < ApplicationController
	def index
		DemoMailer.mail_message.deliver_later
		puts 'finding the views'
	end
end