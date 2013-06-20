class ResultsController < ApplicationController

def new
	@survey = Survey.find_by_name("School")
	@result = Result.new
	@result.answer_results.build
end

def create
	@result = Result.new(params[:result])
	if @result.save
			session[:result_id] = @result.id
  			redirect_to '/result'
  		else
  			render 'new'
  	end
end

def show
	@result = Result.find(params[:id])
end

end
