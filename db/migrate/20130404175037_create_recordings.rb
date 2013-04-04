class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.references :band
      t.references :single

      t.timestamps
    end
    add_index :recordings, :band_id
    add_index :recordings, :single_id
  end
end
