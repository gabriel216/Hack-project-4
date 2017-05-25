class StoreSerializer < ActiveModel::Serializer
  type 'Store'
  attributes :id, :name
  has_many :products
end