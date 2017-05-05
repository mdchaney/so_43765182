class CreatePermissions < ActiveRecord::Migration[5.1]
  def change
    create_table :permissions do |t|
      t.references :permitable, polymorphic: true, index: true, null: false
      t.references :user, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
