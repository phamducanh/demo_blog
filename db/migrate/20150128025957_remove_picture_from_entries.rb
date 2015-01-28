class RemovePictureFromEntries < ActiveRecord::Migration
  def change
    remove_column :entries, :picture, :string
  end
end
