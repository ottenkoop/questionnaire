class PagesController < ApplicationController

def page5
	@survey = Survey.find_by_name("School")
	@result = Result.new
	@result.answer_results.build
end

def page6
	@result = Result.find(params[:id])
end

end