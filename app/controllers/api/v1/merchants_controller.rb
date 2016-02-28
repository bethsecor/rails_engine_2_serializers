class Api::V1::MerchantsController < Api::Api_Controller
  respond_to :json

  def index
    respond_with Merchant.all
  end
end
