class AddAlbumNameToRecording < ActiveRecord::Migration
  def change
    change_table :recordings do |t|
      t.string :album_name
    end
  end
end
