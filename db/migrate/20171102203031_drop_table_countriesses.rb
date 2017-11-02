class DropTableCountriesses < ActiveRecord::Migration[5.1]
  def change
    drop_table :countriesses
  end
end
