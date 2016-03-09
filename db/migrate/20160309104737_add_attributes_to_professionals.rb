class AddAttributesToProfessionals < ActiveRecord::Migration
  def change
    add_column :professionals, :description, :string
    add_column :professionals, :phone_number, :string
    add_column :professionals, :address, :string
    add_column :professionals, :max_travel_range, :integer
  end
end
