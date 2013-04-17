class SurveysController < ApplicationController

def index
	@surveys = Survey.all
end

def new
	@survey = Survey.new
		3.times do
    		question = @survey.questions.build
    		3.times { question.answers.build }
  		end
end

def create
	@survey = Survey.new(params[:survey])
	if @survey.save
      flash[:notice] = "Vragenlijst toegevoegd."
      redirect_to @survey
    else
      render 'new'
    end
end

def show
	@survey = Survey.find(params[:id])
end

end
