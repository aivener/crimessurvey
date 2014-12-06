class FreqsController < ApplicationController

	def index
		@freqs = Freq.all
	end

	def new
		@freq = Freq.new
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
    	#@crime = Crime.find(params[:crime])
    	@freq = @crime.build.freq(params[:freq])
  	end

  	# def update
   #  	@freq = Freq.find(params[:id])
   #  	@freq.update_attribute :rating, params[:rating]
  	# end

  def update
    @freq = Freq.find(params[:id])
    @freq.update!(freq_params)
    @freq.save
    redirect_to freqs_path
  end

  	private
   	
    def freq_params
      params.require(:freq).permit(:rating, :id)
    end


end
