class CreateOpponents < ActiveRecord::Migration
  def change
    create_table :opponents do |t|
      t.string :school_name

      t.timestamps
    end
  end
end
