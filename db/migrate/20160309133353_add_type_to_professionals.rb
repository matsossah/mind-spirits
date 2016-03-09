class AddTypeToProfessionals < ActiveRecord::Migration
  def change
    add_column :professionals, :professional_role, :string
  end
end
