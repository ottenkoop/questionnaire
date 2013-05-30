class PagesController < ApplicationController

def page0
		reset_session
end

def page5_doc
		@survey = Survey.find_by_name("Doctor")
		@result = Result.new
		@result.answer_results.build
end

def page6_doc
	@result = Result.find(session[:result_id])
	session[:dream1] = true
end

end