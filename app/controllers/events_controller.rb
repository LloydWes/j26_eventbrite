class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @all_events_array = Event.all
  end
  def show
  end
  def new
    @event = Event.new
  end
  def create
  end
end
