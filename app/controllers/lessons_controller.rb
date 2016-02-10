class LessonsController < ApplicationController
before_action :authenticate_user!

	def index
		@lessons = Lesson.where(:reciever_id => current_user.id).order(created_at: :desc)
		@lesson = Lesson.new
	end

	def new
		@lesson = Lesson.new
		@chosen_recipient = User.find_by(id: params[:to].to_i) if params[:to]
	end

	def create
		@lesson = Lesson.new(lesson_params)
		@lesson.user = current_user
		@lesson.save

		
	end

	def show
		@lesson = Lesson.find(params[:id])
	end

private
	def lesson_params
		params.require(:lesson).permit(:date, :exercise, :reciever_id)
	end
end
 