class AddUserForeignKeyToProfessional < ActiveRecord::Migration
  def change
    add_column :professionals, :user_id, :integer
  end
end
