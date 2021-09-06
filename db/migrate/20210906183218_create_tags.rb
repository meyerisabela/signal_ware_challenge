class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.integer :count
      t.references :ticket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
