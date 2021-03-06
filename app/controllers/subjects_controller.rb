class SubjectsController < ApplicationController

	def index
		@subjects = Subject.all
	end

	def show
		@subject = Subject.find(params[:id])
	end


	def new
		@subject = Subject.new
	end


	def create
  		@subject = Subject.new(subject_params)
    	if @subject.save
      		redirect_to @subject
    	else
      		render :new, status: :unprocessable_entity
    	end
  	end

    private
    def subject_params
      params.require(:subject).permit(:name,:student_id)
    end

end
