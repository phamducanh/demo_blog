class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.text :content
      t.references :user, index: true

      t.timestamps
    end
  end
end
