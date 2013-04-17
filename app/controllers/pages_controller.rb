class PagesController < ApplicationController

def page1
	@question = Question.first
end

def page6
	@survey = Survey.find_by_name("School")
	@result = Result.new
	@result.answer_results.build
end

end