class CreateCustomers < ActiveRecord::Migration[7.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phonenumber
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
