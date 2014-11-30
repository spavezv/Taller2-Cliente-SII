class ClienteController < ApplicationController
	respond_to :html, :xml, :json
	def index
		redirect_to :controller=>"servicios", :action => "index"
	end
end
