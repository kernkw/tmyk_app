class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :facts, :body, :parse_key
  end
end
