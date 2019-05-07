class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @all_events_array = Event.all.reverse
  end
  def show
    @event = Event.find_by(id: params[:id])
  end
  def new
    @event = Event.new
  end
  def create
    event_params = params.require(:event).permit(:title, :start_date, :duration, :price, :location, :description)
    event_params['admin_id'] = current_user.id
    @event = Event.new(event_params)
    if @event.valid?
      @event.save
      flash[:success] = "The event has been successfully created"
    elsif !@event.valid?
      flash[:danger] = "Oops, something wrong happened. The event hasn't been created"    
      flash[:danger] << @event.errors.details.to_s
    else
      flash[:danger] = "Ok...I'm not supposed to be here... WTF o_0 !"
    end
  end
end
