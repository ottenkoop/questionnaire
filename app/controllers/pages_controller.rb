class PagesController < ApplicationController

def page6
	@survey = Survey.find_by_name("School")
	@result = Result.new
	@result.answer_results.build
end

end