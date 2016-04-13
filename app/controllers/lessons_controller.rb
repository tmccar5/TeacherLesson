class LessonsController < ApplicationController
before_action :authenticate_user!

	def index
		@lessons = Lesson.where(:reciever_id => current_user.id).order(created_at: :desc)
	end

	def home
		@lessons = Lesson.where(:reciever_id => current_user.id)
		@lesson = @lessons.last
	end

	def teacher_cal
		@lessons = Lesson.all
	end

	def student_cal
		@lessons = Lesson.where(:reciever_id => current_user.id)
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
		@user = User.find_by(:id => @lesson.reciever_id)
	end

private
	
	def lesson_params
		params.require(:lesson).permit(:title, :exercise, :reciever_id, :chart, :start_time)
	end
end
 