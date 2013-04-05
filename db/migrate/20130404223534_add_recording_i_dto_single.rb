class AddRecordingIDtoSingle < ActiveRecord::Migration
  def change
    change_table :singles do |t|
      t.integer :recording_id
    end
  end
end
