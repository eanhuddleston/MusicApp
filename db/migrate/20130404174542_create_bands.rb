class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.integer :date_formed
      t.string :genre

      t.timestamps
    end
  end
end
