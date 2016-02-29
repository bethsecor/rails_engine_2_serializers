class Api::V1::ItemsController < Api::Api_Controller
  respond_to :json

  def index
    respond_with Item.all
  end
end
