class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :artist
      t.string :title
      t.string :url
      t.string :role, default: 'owner'

      t.timestamps
    end
  end
end
