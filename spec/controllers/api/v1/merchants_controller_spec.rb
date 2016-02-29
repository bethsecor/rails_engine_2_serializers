require 'rails_helper'

RSpec.describe Api::V1::MerchantsController, type: :controller do
  it "shows only the name for json response" do
    merchant_1, merchant_2 = create_list(:merchant, 2)

    get :index, format: :json

    merchants = JSON.parse(response.body)
    first_merchant = merchants.first

    expect(first_merchant['name']).to eq merchant_1.name
    expect(first_merchant).to_not eq merchant_1.name
  end
end
