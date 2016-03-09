class AddProfessionalToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :professional, index: true, foreign_key: true
  end
end
