class AddPhoneNumberToBarmen < ActiveRecord::Migration
  def change
    add_column :barmen, :phone_number, :string
  end
end
