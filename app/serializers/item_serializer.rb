class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit_price

  def unit_price
    ("%.2f" % (object.unit_price / 100))
  end
end
