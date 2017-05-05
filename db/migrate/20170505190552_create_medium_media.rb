class CreateMediumMedia < ActiveRecord::Migration[5.1]
  def change
    create_table :medium_media do |t|
      t.references :company, foreign_key: true, index: true, null: true
      t.string :name, limit: 100, null: false

      t.timestamps
    end
  end
end
