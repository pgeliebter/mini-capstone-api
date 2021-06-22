class ChangeImageUrlToText < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :image_url, :text
  end
end
