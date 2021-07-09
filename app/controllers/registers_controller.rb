class RegistersController < ApplicationController
  before_action :authenticate_user!
  def create
    @event = Event.find(params[:event_id])
    @register = @event.registers.create(register_params)
    redirect_to event_path(@event)
  end

  private
    def register_params
      params.require(:register).permit(:email, :name)
    end
end
