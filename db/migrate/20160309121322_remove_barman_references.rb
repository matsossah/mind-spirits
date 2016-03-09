class RemoveBarmanReferences < ActiveRecord::Migration
  def change
    remove_reference :events, :barman, index: true
  end
end
