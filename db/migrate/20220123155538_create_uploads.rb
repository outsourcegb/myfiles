class CreateUploads < ActiveRecord::Migration[7.0]
  def change
    create_table :uploads do |t|
      t.references :user, foreign_key: true
      t.string :title, null: false
      t.string :description

      t.timestamps
    end

    add_index :uploads, :title
  end
end
