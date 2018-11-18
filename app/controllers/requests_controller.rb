class RequestsController < ApplicationController

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_request
    @space = Space.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def request_params
    params.require(:request).permit(:space_id, :).merge(user_id: current_user.id)
  end
end
