class EjecutanteController < ApplicationController

	def index
		redirect_to :controller=>"tareas", :action => "index"
	end

end
