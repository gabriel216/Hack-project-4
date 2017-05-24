# == Schema Information
#
# Table name: stores
#
#  id         :integer          not null, primary key
#  name       :string
#  kind       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Store < ApplicationRecord
  has_many :products
  enum kind: {shoes: 1, Electronics: 2, Clothes: 3, Bookstore: 4, Ironmongery: 5}
end
