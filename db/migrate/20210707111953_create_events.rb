class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.date :day
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
