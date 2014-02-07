class QuestionsController < ApplicationController

	def index
		@questions = Question.all
	end
	def new
		@question = Question.new
	end
	def show
		@question = Question.find(params[:id])
	end
	def edit
		@question = Question.find(params[:id])
	end
	def create
    @question = Question.new(params[:question])
    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render json: @question, status: :created, location: @question }
      else
        format.html { render action: "new" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
	end
	def update
		@question = Question.find(params[:id])
		if @question.update_attributes(:question)
			redirect_to question_path(@question)
		else
			render 'index'
		end
	end
	def destroy
		@question = Question.find(params[:id])
		if @question.delete
			redirect_to questions_path
		else
			render 'index'
		end
	end
	def get_question_type
		respond_to do |format|
			format.js
		end
	end
end
