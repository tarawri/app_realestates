class AddUserToRealestates < ActiveRecord::Migration[5.2]
  def change
    add_reference :realestates, :user, foreign_key: true
  end
end
