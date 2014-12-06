class SeveritiesController < ApplicationController

	def index
		@severities = Severity.all
	end

	def new
		@severities = Severity.new
	end

	def show
	end

	def create
    	# @freq = @crime.freq.new :rating => params[:rating]
    	# if @freq.save
     #  		redirect_to crime_ratings_path(@crime), :notice => "Rating successful."
    	# else
     #  		redirect_to crime_ratings_path(@crime), :notice => "Something went wrong."
    	# end
    	@crime = Crime.find(params[:crime])
    	@severities = @crime.build.severity(params[:severity])
  	end

  	def update
    	@severity = Severity.find(params[:id])
    	@severity.update_attribute :rating, params[:rating]
  	end

  	private
   	
   	def set_crime
      	@crime = Crime.find(params[:severity_id])
    end


end
