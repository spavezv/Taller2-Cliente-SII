class WelcomeController < ApplicationController
	def index
		if usuario_signed_in?
			if current_usuario.tipo_de_usuario == 4
				redirect_to :controller=>"cliente", :action => "index"
			elsif current_usuario.tipo_de_usuario == 3
				redirect_to :controller=>"ejecutante", :action => "index"
			elsif current_usuario.tipo_de_usuario == 2
				redirect_to :controller=>"administrador", :action => "index"
			elsif current_usuario.tipo_de_usuario == 1
				redirect_to :controller=>"super_administrador", :action => "index"
			end
		else
			redirect_to new_usuario_session_path
		end
	end
end
