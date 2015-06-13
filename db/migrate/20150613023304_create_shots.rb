class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
