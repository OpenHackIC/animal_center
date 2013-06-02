class CreateCaptionedImages < ActiveRecord::Migration
  def change
    create_table :captioned_images do |t|
      t.integer :source_image_id
      t.string :title
      t.string :text_top
      t.string :text_bottom

      t.timestamps
    end
  end
end
