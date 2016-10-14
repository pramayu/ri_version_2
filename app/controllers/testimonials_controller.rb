class TestimonialsController < ApplicationController

  before_action :set_test, only: [:edit, :update, :destroy]
  def new
    @testimonial = Testimonial.new
  end


  def create
    @testimonial = Testimonial.new(params_test)
    if @testimonial.save
      redirect_to root_path
    else 
      render 'new'
    end
  end

  def edit

  end

  def update
    if @testimonial.update(params_test)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def params_test
    params.require(:testimonial).permit(:name, :content, :avatar, :occupation)
  end

  def set_test
    @testimonial = Testimonial.find(params[:id])
  end
end
