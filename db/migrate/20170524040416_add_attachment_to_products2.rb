class AddAttachmentToProducts2 < ActiveRecord::Migration[5.1]
    def up
    add_attachment :products, :img
  end

  def down
    remove_attachment :products, :img
  end
end
