class AddClicksToXxxes < ActiveRecord::Migration
  def change
    add_column :xxxes, :clicks, :integer
  end
end
