class PeopleController < ApplicationController



	def index
		#@people = Person.order("name ASC").group("location")
		@search = Person.search do
			fulltext params[:search]
		end
		#@people = Person.search params[:search]
		@people = @search.results
	end

	def new
		@person = Person.new
	end

	def create
		@person = Person.new(params.require(:person).permit(:name, :location, :phone, :status, :ipaddress))
		@person.ipaddress = request.env['REMOTE_ADDR'].to_s
	
		if @person.save
			redirect_to(:action => 'index')
			flash[:notice] = "Person successfully added."
		else
			render('new')
		end
	end

	def delete
		@person = Person.find(params[:id])
	end

	def destroy
		person = Person.find(params[:id])
		person.destroy
		redirect_to(:action => 'index')
		flash[:notice] = "Deleted successfully"
	end

end
