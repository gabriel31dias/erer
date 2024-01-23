class CreateBanners < ActiveRecord::Migration[7.1]
  def self.up
    create_table :banners do |t|
      t.string :name
      t.string :description
      t.boolean :active
      t.blob :image

    end
  end

  def self.down
    drop_table :banners
  end
end
