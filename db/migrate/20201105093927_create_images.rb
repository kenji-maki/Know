class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :user_id
      t.string :image
      t.string :description
      t.integer :place, unique: true
      t.timestamps
    end
  end
end
