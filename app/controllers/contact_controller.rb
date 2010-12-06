class ContactController < ApplicationController
	def index
		# render index.html.erb
	end
	def send_mail
		Emailer::deliver_contact_email(params[:email])
	end
end
