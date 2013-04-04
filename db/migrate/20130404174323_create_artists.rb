class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :fname
      t.string :lname
      t.integer :age
      t.string :gender
      t.string :instrument

      t.timestamps
    end
  end
end
