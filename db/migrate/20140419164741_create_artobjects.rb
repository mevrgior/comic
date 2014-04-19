class CreateArtobjects < ActiveRecord::Migration
  def change
    create_table :artobjects do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.integer :user_id

      t.timestamps
    end
  end
end
