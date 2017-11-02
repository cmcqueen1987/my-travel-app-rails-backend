class AddUserToCountry < ActiveRecord::Migration[5.1]
  def change
    add_reference :countries, :user, foreign_key: true
  end
end
