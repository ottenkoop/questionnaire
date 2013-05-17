class QuestionsController < ApplicationController

def edit
    @question = Question.find(params[:id])
end

def update
    @question = Question.find(params[:id])

    respond_to do |format|
      if @question.update_attributes(params[:question])
        format.html { redirect_to surveys_url , notice: 'Survey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plan.errors, status: :unprocessable_entity }
      end
    end
end

def new
  @question = Question.new
    3.times do
        question = @question.answers.build
      end
end

def create
  @question = Question.new(params[:question])
  if @question.save
      flash[:notice] = "Question added."
      redirect_to surveys_url
    else
      render 'new'
    end
end

end