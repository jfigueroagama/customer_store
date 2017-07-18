class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.string :number
      t.string :phonable_type
      t.integer :phonable_id

      t.timestamps
    end
  end
end
