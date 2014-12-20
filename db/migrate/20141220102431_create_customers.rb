class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers, id: false do |t|
      t.string :id
      t.string :name
      t.string :address
      t.timestamps
    end

    execute 'ALTER TABLE customers ADD PRIMARY KEY(id);'
  end
end
