class AddAttachmentToProducts < ActiveRecord::Migration[5.1]
  def change
    add_attachment :products, :img
    remove_attachment :products, :img
  end
end
