class RemoveSingleidFromRecording < ActiveRecord::Migration
  def up
    remove_column :recordings, :single_id
  end
end
