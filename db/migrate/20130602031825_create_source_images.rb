class CreateSourceImages < ActiveRecord::Migration
  def change
    create_table :source_images do |t|
      t.string :category
      t.string :url
      t.integer :external_id

      t.timestamps
    end
  end
end
