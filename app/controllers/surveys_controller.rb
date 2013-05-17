class SurveysController < ApplicationController

def index
	@surveys = Survey.all
end

def edit
    @survey = Survey.find(params[:id])
end

def update
    @survey = Survey.find(params[:id])

    respond_to do |format|
      if @survey.update_attributes(params[:survey])
        format.html { redirect_to @survey, notice: 'Survey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
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
