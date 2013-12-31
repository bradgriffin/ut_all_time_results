class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :active_seasons

      t.timestamps
    end
  end
end
