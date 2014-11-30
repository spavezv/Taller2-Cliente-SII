class ClienteController < ApplicationController
	respond_to :html, :xml, :json
	def index
		redirect_to :controller=>"servicio", :action => "index"
  	end
end
