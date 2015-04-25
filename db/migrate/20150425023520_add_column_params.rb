class AddColumnParams < ActiveRecord::Migration
  def change
    add_column :facts, :params, :string
  end
end
