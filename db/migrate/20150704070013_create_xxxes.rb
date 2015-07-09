class CreateXxxes < ActiveRecord::Migration
  def change
    create_table :xxxes do |t|
      t.string :name
      t.integer :num

      t.timestamps
    end
  end
end
