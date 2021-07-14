class RegistersController < ApplicationController
  before_action :authenticate_user!
  def create
    event = Event.find(params[:event_id])
    @register = Register.new(event_id: event.id, user_id: current_user.id)

    if Register.where(user_id: current_user.id, event_id: params[:event_id]).exists?
      redirect_to event_path(event)
      return
    end

  end

  private

  def register_params
    params.require(:register).permit(:email, :name)
  end
end
