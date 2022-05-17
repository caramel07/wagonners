class CreateWagonners < ActiveRecord::Migration[6.1]
  def change
    create_table :wagonners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :github
      t.string :linkedin
      t.references :batchs, null: false, foreign_key: true

      t.timestamps
    end
  end
end
