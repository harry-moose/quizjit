class QuestionsController < ApplicationController

before_action :find_question, only: [:show, :edit, :update, :desroy]

def index
 @questions = Question.all.order("created_at DESC")
end

def new 
 @question = current_user.questions.build 
end

def create 
 @question= Question.new(question_params)
 if @question.save
  redirect_to @question, notice: "Successfully created new Question"
 else
  render 'new'
 end
end

def edit 
end

def update 
 if @question.update(question_params)
  redirect_to @question, notice: "Question was successfully updated!"
 else
  render 'edit'
 end 
end

def destroy 
 @pin.destroy
 redirect_to root_path   
end


private
 def pin_params
 params.require (:question).permit(:question, :opt1, :opt2, :opt3, :opt4, :answer)
 end
 def find_pin
 @question =Question.find(params(:id))
end


end