class PagesController < ApplicationController

	def page0
			reset_session
	end

	def page5_doc
			@survey = Survey.find_by_name("Doctor")
			@result = Result.new
			@result.answer_results.build
	end

	def result_page
		@result = Result.find(session[:result_id])
	end

	def page8_teacher
		@survey = Survey.find_by_name("Teacher")
		@result = Result.new
		@result.answer_results.build
	end

	def page15_jungle
		@survey = Survey.find_by_name("Jungle")
		@result = Result.new
		@result.answer_results.build
	end

end