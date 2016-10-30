class SlidersController < ApplicationController
  before_action :signed_in_user
  before_action :set_slider, only: [:edit, :update, :destroy]

  layout "admin"

  def index

  end

  def new
    @slider = Slider.new
  end

  def create
    @slider = Slider.new(params_slider)
    if @slider.save
      redirect_to new_slider_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def params_slider
    params.require(:slider).permit(:image, :caption, :subcaption)
  end

  def set_slider
    @slider = Slider.find(params[:id])
  end
end
