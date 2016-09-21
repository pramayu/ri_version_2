class EventsController < ApplicationController
  
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index

  end

  def new
    @event = current_user.events.build
    @event.galleries.build
  end

  def create
    @event = current_user.events.build(params_event)
    if @event.save
      redirect_to event_url(@event)
    else
      render 'new'
    end
  end

  def show
    
  end

  def edit

  end

  def update
    if @event.update(params_event)
      redirect_to event_path(@event)
    else
      render 'edit'
    end
  end

  def destroy

  end

  private 

  def set_event
    @event = Event.find(params[:id])
  end

  def params_event
    params.require(:event).permit(:name, :description, :image, :event_date, galleries_attributes: [:source])
  end

end
