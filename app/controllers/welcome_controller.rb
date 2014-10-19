class WelcomeController < ApplicationController
	def index
		if user_signed_in?
			if current_user.super_administrator?
				redirect_to :controller=> "super_administrator", :action => "index"
			end
			if current_user.administrator?
				redirect_to :controller=> "administrator", :action => "index"
			end
			if current_user.employee?
				redirect_to :controller=> "employee", :action => "index"
			end
			if current_user.client?
				redirect_to :controller=> "client", :action => "index"
			end
		end
	end
end
