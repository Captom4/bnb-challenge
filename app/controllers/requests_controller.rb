# frozen_string_literal: true

class RequestsController < ApplicationController
  before_action :authenticate_user!

  def index
    @requests_by_user = current_user.requests
    @request_for_user = current_user.spaces.map(&:requests)
  end

  private

  def set_post
    @request = Request.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def request_params
    params.require(:request).permit(:space_id, :booked_date).merge(user_id: current_user.id)
  end
end
