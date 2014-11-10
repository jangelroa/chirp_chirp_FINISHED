class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.integer :image
      t.string :twit

      t.timestamps
    end
  end
end
