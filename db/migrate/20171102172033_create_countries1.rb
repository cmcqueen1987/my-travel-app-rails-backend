class CreateCountries1 < ActiveRecord::Migration[5.1]
  def change
    create_table :countries1s do |t|
      t.string :name
    end
  end
end
