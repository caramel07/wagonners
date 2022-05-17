class CreateBatches < ActiveRecord::Migration[6.1]
  def change
    create_table :batches do |t|
      t.integer :batch_number

      t.timestamps
    end
  end
end
