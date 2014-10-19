class AdministratorController < ApplicationController
	before_filter :authenticate_user!

	def index
	end

	def mostrarUsuarios
		@users = User.all

		respond_to do |format|
			format.html #users.html.erb
			format.json {render json @users}
		end
	end
	
	def index2
		#hola
	end
end
