class ProductSerializer < ActiveModel::Serializer
  type 'Product'
  attributes :id, :name
  attributes :price, :description
end