class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :addresses, :addresable_type, :addressable_type
  end
end
