class CompanyController < ApplicationController
	def index
    @companies = Company.all
  end
    
  def list
      #@companies = Company.find(:all)
   end
   	
   	def show
   		 @company = Company.find(params[:id])
   	end
   
   	def new
   		@company = Company.new
    end
   	def create
   		@company = Company.new(params[:company])
      if @company.save
            redirect_to :action => 'list'
    	end
   	end
   	
   	def edit
   		@company = Company.find(params[:id])
   	end
   def update
   	@company = Company.find(:id)
      if @company.update_attributes(params[:company])
         redirect_to :action => 'show', :id => @company
     end
   end
   def delete
   		Company.find(params[:id]).destroy
      redirect_to :action => 'list'

   end
end
