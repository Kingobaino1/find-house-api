class HouseSerializer < ActiveModel::Serializer
  attributes :id, :price, :details, :about, :image, :owner
end