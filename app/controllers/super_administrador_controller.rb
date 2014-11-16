class SuperAdministradorController < ApplicationController
	respond_to :html, :xml, :json
	def index
		redirect_to :controller=>"usuario", :action => "index"
  	end
end
