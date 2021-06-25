class MyclassController < ApplicationController
    def index
    @myclasses= Myclass.all
    end

    def show
    @myclass = Myclass.find(params[:id])
    end
    def new
    @myclass = Myclass.new
  end

  def create
    @myclass = Myclass.new(myclass_params)

    if @myclass.save
      redirect_to @myclass
    else
      render :new
    end
  end

  private
    def myclass_params
      params.require(:myclass).permit(:class_no)
    end
  end
