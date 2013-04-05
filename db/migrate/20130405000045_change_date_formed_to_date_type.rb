class ChangeDateFormedToDateType < ActiveRecord::Migration
  def change
    remove_column :bands, :date_formed
    change_table :bands do |t|
      t.date :date_formed
    end
  end
end
