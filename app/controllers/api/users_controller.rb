class Api::UsersController < ApiController
  doorkeeper_for :all
  respond_to     :json

  def show
    respond_with current_resource_owner
  end

  def create
    render json: current_resource_owner.to_json
  end

end
