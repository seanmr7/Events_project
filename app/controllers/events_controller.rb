class EventsController < ApplicationController
  
  def show
    @event = Event.find(params[:id])
    @user = User.find(@event.event_creator_id)
  end
  
  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
  end
  
  def create
    @user = User.find(params[:user_id])
    @event = @user.created_events.build( event_params )
    
    if @event.save
      flash[:success] = "Event created"
      redirect_to root_path
    else
      render action :new
    end
  end
  
  private
  
  def event_params
    params.require(:event).permit(:name, :description, :date)
  end
end