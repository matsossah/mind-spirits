class AddBusinessAddressToProfessionals < ActiveRecord::Migration
  def change
    add_column :professionals, :business_address, :string
  end
end
