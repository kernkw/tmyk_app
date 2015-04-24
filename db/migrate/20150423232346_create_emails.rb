class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.text :subject
      t.string :from

      t.timestamps
    end
  end
end
