class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :city, :string
      t.column :state, :string
      t.column :zip, :string
      t.column :phone_number, :string
      t.column :website, :string

      t.timestamps
    end
  end
end
