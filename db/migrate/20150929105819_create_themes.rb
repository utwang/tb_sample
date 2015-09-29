class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.references :user, index: true#, foreign_key: true#, dependent: :delete
      t.foreign_key :users, dependent: :delete
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
