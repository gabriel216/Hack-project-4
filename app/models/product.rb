# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  name             :string
#  price            :float
#  quantity         :integer
#  description      :string
#  store_id         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  img_file_name    :string
#  img_content_type :string
#  img_file_size    :integer
#  img_updated_at   :datetime
#

class Product < ApplicationRecord
  belongs_to :store
  
end
