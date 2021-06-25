class StudentsController < ApplicationController
      def index
      @students= Student.all
      end

      def show
      @student = Student.find(params[:id])
      end

      def new
      @student = Student.new
    end

    def create
      @student = Student.new(student_params)
      @student.myclass = Myclass.first
      if @student.save
        redirect_to @student
      else
        flash[:alert] = "Could not save"
        render :new
      end
    end

    private
      def student_params
        params.require(:student).permit(:stu_name)
      end
  end
