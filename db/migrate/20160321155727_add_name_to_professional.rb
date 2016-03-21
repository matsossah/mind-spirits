class AddNameToProfessional < ActiveRecord::Migration
  def change
    add_column :professionals, :name, :string
  end
end
