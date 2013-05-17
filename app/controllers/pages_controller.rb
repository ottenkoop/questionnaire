class PagesController < ApplicationController

def page0
		reset_session
end

def page5
			@survey = Survey.find_by_name("School")
			@result = Result.new
			@result.answer_results.build
			reset_session
end

def page6
	@result = Result.find(session[:result_id])
	session[:dream1] = true
end

end