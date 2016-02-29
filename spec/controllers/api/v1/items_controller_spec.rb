require 'rails_helper'

RSpec.describe Api::V1::ItemsController, type: :controller do
  it "items #index" do
    item_1, item_2 = create_list(:item, 2)

    get :index, format: :json

    items = JSON.parse(response.body)
    first_item = items.first

    expect(first_item['name']).to eq(item_1.name)
  end
end
